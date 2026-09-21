import 'package:dio/dio.dart';

/// A Mastodon pagination target and its cursor parameters.
final class PaginationLink {
  const PaginationLink(this.uri);

  /// The complete pagination target.
  final Uri uri;

  /// Return results older than this ID.
  String? get maxId => uri.queryParameters['max_id'];

  /// Return results immediately newer than this ID.
  String? get minId => uri.queryParameters['min_id'];

  /// Return results newer than this ID.
  String? get sinceId => uri.queryParameters['since_id'];

  /// The requested maximum number of results.
  int? get limit {
    final value = uri.queryParameters['limit'];
    return value == null ? null : int.tryParse(value);
  }

  @override
  String toString() => uri.toString();
}

/// Links advertised by an HTTP `Link` response header.
final class PaginationLinks {
  const PaginationLinks._(this.relations);

  /// No pagination links.
  static const empty = PaginationLinks._(<String, List<Uri>>{});

  /// Link targets grouped by their `rel` value.
  final Map<String, List<Uri>> relations;

  /// The first link with the `next` relation, if present.
  PaginationLink? get next => _first('next');

  /// The first link with the `prev` relation, if present.
  PaginationLink? get previous => _first('prev');

  /// The first link with the `prev` relation, if present.
  PaginationLink? get prev => previous;

  /// Whether the response advertised no link relations.
  bool get isEmpty => relations.isEmpty;

  /// Whether the response advertised at least one link relation.
  bool get isNotEmpty => relations.isNotEmpty;

  /// Returns all targets advertised for [relation].
  List<Uri> operator [](String relation) =>
      relations[relation] ?? const <Uri>[];

  /// Parses one HTTP `Link` header field value.
  factory PaginationLinks.parse(String? value) =>
      value == null ? empty : PaginationLinks.fromHeaderValues(<String>[value]);

  /// Parses one or more HTTP `Link` header field values.
  factory PaginationLinks.fromHeaderValues(Iterable<String> values) {
    final relations = <String, List<Uri>>{};

    for (final value in values) {
      for (final linkValue in _splitOutsideDelimiters(value, ',')) {
        final closingBracket = linkValue.indexOf('>');
        if (!linkValue.startsWith('<') || closingBracket < 2) {
          continue;
        }

        final target = Uri.tryParse(linkValue.substring(1, closingBracket));
        if (target == null) {
          continue;
        }

        String? relationValue;
        final parameters = _splitOutsideDelimiters(
          linkValue.substring(closingBracket + 1),
          ';',
        );
        for (final parameter in parameters) {
          final equals = parameter.indexOf('=');
          if (equals < 1 ||
              parameter.substring(0, equals).trim().toLowerCase() != 'rel') {
            continue;
          }
          relationValue = _parameterValue(parameter.substring(equals + 1));
          break;
        }

        if (relationValue == null) {
          continue;
        }
        for (final relation in relationValue.split(RegExp(r'\s+'))) {
          if (relation.isNotEmpty) {
            relations.putIfAbsent(relation, () => <Uri>[]).add(target);
          }
        }
      }
    }

    if (relations.isEmpty) {
      return empty;
    }
    return PaginationLinks._(
      Map<String, List<Uri>>.unmodifiable(
        relations.map(
          (relation, targets) =>
              MapEntry(relation, List<Uri>.unmodifiable(targets)),
        ),
      ),
    );
  }

  PaginationLink? _first(String relation) {
    for (final entry in relations.entries) {
      if (entry.key.toLowerCase() == relation && entry.value.isNotEmpty) {
        return PaginationLink(entry.value.first);
      }
    }
    return null;
  }
}

/// Pagination metadata attached to a generated Mastodon API response.
extension MastodonResponsePagination<T> on Response<T> {
  /// Parses this response's HTTP `Link` header.
  PaginationLinks get pagination =>
      PaginationLinks.fromHeaderValues(headers['link'] ?? const <String>[]);
}

Iterable<String> _splitOutsideDelimiters(String value, String delimiter) sync* {
  var start = 0;
  var inUri = false;
  var inQuotes = false;
  var escaped = false;

  for (var index = 0; index < value.length; index++) {
    final character = value[index];
    if (escaped) {
      escaped = false;
      continue;
    }
    if (inQuotes && character == r'\') {
      escaped = true;
      continue;
    }
    if (!inUri && character == '"') {
      inQuotes = !inQuotes;
      continue;
    }
    if (!inQuotes && character == '<') {
      inUri = true;
      continue;
    }
    if (!inQuotes && character == '>') {
      inUri = false;
      continue;
    }
    if (!inUri && !inQuotes && character == delimiter) {
      final part = value.substring(start, index).trim();
      if (part.isNotEmpty) {
        yield part;
      }
      start = index + 1;
    }
  }

  final part = value.substring(start).trim();
  if (part.isNotEmpty) {
    yield part;
  }
}

String _parameterValue(String value) {
  final trimmed = value.trim();
  if (trimmed.length < 2 ||
      !trimmed.startsWith('"') ||
      !trimmed.endsWith('"')) {
    return trimmed;
  }

  final unquoted = StringBuffer();
  var escaped = false;
  for (final character in trimmed.substring(1, trimmed.length - 1).split('')) {
    if (escaped) {
      unquoted.write(character);
      escaped = false;
    } else if (character == r'\') {
      escaped = true;
    } else {
      unquoted.write(character);
    }
  }
  if (escaped) {
    unquoted.write(r'\');
  }
  return unquoted.toString();
}
