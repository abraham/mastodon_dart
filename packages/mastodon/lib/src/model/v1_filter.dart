//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/filter_context_enum.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_filter.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Filter {
  /// Returns a new [V1Filter] instance.
  V1Filter({
    required this.context,

    required this.id,

    required this.irreversible,

    required this.phrase,

    required this.wholeWord,

    this.expiresAt,
  });

  /// The contexts in which the filter should be applied.
  @JsonKey(name: r'context', required: true, includeIfNull: false)
  final List<FilterContextEnum> context;

  /// The ID of the filter in the database.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Should matching entities in home and notifications be dropped by the server? See [implementation guidelines for filters](https://docs.joinmastodon.org/api/guidelines/#filters).
  @JsonKey(name: r'irreversible', required: true, includeIfNull: false)
  final bool irreversible;

  /// The text to be filtered.
  @JsonKey(name: r'phrase', required: true, includeIfNull: false)
  final String phrase;

  /// Should the filter consider word boundaries? See [implementation guidelines for filters](https://docs.joinmastodon.org/api/guidelines/#filters).
  @JsonKey(name: r'whole_word', required: true, includeIfNull: false)
  final bool wholeWord;

  /// When the filter should no longer be applied.
  @JsonKey(name: r'expires_at', required: false, includeIfNull: false)
  final DateTime? expiresAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is V1Filter &&
          other.context == context &&
          other.id == id &&
          other.irreversible == irreversible &&
          other.phrase == phrase &&
          other.wholeWord == wholeWord &&
          other.expiresAt == expiresAt;

  @override
  int get hashCode =>
      context.hashCode +
      id.hashCode +
      irreversible.hashCode +
      phrase.hashCode +
      wholeWord.hashCode +
      (expiresAt == null ? 0 : expiresAt.hashCode);

  factory V1Filter.fromJson(Map<String, dynamic> json) =>
      _$V1FilterFromJson(json);

  Map<String, dynamic> toJson() => _$V1FilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
