//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/filter_filter_action_enum.dart';
import 'package:mastodon/src/model/filter_keyword.dart';
import 'package:mastodon/src/model/filter_status.dart';
import 'package:mastodon/src/model/filter_context_enum.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'filter.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Filter {
  /// Returns a new [Filter] instance.
  Filter({
    required this.context,

    required this.filterAction,

    required this.id,

    required this.title,

    this.expiresAt,

    this.keywords,

    this.statuses,
  });

  /// The contexts in which the filter should be applied.
  @JsonKey(name: r'context', required: true, includeIfNull: false)
  final List<FilterContextEnum> context;

  /// The action to be taken when a status matches this filter.
  @JsonKey(name: r'filter_action', required: true, includeIfNull: false)
  final FilterFilterActionEnum filterAction;

  /// The ID of the Filter in the database.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// A title given by the user to name the filter.
  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  /// When the filter should no longer be applied.
  @JsonKey(name: r'expires_at', required: false, includeIfNull: false)
  final DateTime? expiresAt;

  /// The keywords grouped under this filter. Omitted when part of a [FilterResult](https://docs.joinmastodon.org/entities/FilterResult/).
  @JsonKey(name: r'keywords', required: false, includeIfNull: false)
  final List<FilterKeyword>? keywords;

  /// The statuses grouped under this filter. Omitted when part of a [FilterResult](https://docs.joinmastodon.org/entities/FilterResult/).
  @JsonKey(name: r'statuses', required: false, includeIfNull: false)
  final List<FilterStatus>? statuses;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Filter &&
          other.context == context &&
          other.filterAction == filterAction &&
          other.id == id &&
          other.title == title &&
          other.expiresAt == expiresAt &&
          other.keywords == keywords &&
          other.statuses == statuses;

  @override
  int get hashCode =>
      context.hashCode +
      filterAction.hashCode +
      id.hashCode +
      title.hashCode +
      (expiresAt == null ? 0 : expiresAt.hashCode) +
      (keywords == null ? 0 : keywords.hashCode) +
      (statuses == null ? 0 : statuses.hashCode);

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);

  Map<String, dynamic> toJson() => _$FilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
