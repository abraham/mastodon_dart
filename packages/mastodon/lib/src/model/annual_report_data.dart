//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'annual_report_data.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AnnualReportData {
  /// Returns a new [AnnualReportData] instance.
  AnnualReportData({
    required this.archetype,

    required this.typeDistribution,

    required this.mostUsedApps,

    required this.commonlyInteractedWithAccounts,

    required this.mostRebloggedAccounts,

    required this.percentiles,

    this.topStatuses,

    this.timeSeries,

    this.topHashtags,
  });

  /// Archetype the user corresponds to. This is meant to represent a playful and very coarse overview of the user's posting habits over the year.
  @JsonKey(name: r'archetype', required: true, includeIfNull: false)
  final AnnualReportDataArchetypeEnum archetype;

  /// Provides a breakdown of the user's posts statistics over the year. Only available in schema version 1.
  @JsonKey(name: r'type_distribution', required: true, includeIfNull: false)
  final Object typeDistribution;

  /// Provides a breakdown of the apps the user used the most for posting statuses over the year. Only available in schema version 1.
  @JsonKey(name: r'most_used_apps', required: true, includeIfNull: false)
  final List<Object> mostUsedApps;

  /// Provides a breakdown of the accounts the user have the most frequently replied to over the year. Only available in schema version 1.
  @JsonKey(
    name: r'commonly_interacted_with_accounts',
    required: true,
    includeIfNull: false,
  )
  final List<Object> commonlyInteractedWithAccounts;

  /// Provides a breakdown of the accounts the user has reblogged the most over the year. Only available in schema version 1.
  @JsonKey(
    name: r'most_reblogged_accounts',
    required: true,
    includeIfNull: false,
  )
  final List<Object> mostRebloggedAccounts;

  /// Which percentile of the most prolific posters on the same server the user is in. Only available in schema version 1.
  @JsonKey(name: r'percentiles', required: true, includeIfNull: false)
  final num percentiles;

  /// Provides a breakdown of the user's most-interacted statuses by type of interaction (reblogs, favourites, replies) over the year.
  @JsonKey(name: r'top_statuses', required: false, includeIfNull: false)
  final Object? topStatuses;

  /// Provides a breakdown of new statuses, follows and followers per month.
  @JsonKey(name: r'time_series', required: false, includeIfNull: false)
  final List<Object>? timeSeries;

  /// Provides a breakdown of the user's most frequently used hashtags over the year.
  @JsonKey(name: r'top_hashtags', required: false, includeIfNull: false)
  final List<Object>? topHashtags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnnualReportData &&
          other.archetype == archetype &&
          other.typeDistribution == typeDistribution &&
          other.mostUsedApps == mostUsedApps &&
          other.commonlyInteractedWithAccounts ==
              commonlyInteractedWithAccounts &&
          other.mostRebloggedAccounts == mostRebloggedAccounts &&
          other.percentiles == percentiles &&
          other.topStatuses == topStatuses &&
          other.timeSeries == timeSeries &&
          other.topHashtags == topHashtags;

  @override
  int get hashCode =>
      archetype.hashCode +
      typeDistribution.hashCode +
      mostUsedApps.hashCode +
      commonlyInteractedWithAccounts.hashCode +
      mostRebloggedAccounts.hashCode +
      percentiles.hashCode +
      (topStatuses == null ? 0 : topStatuses.hashCode) +
      (timeSeries == null ? 0 : timeSeries.hashCode) +
      (topHashtags == null ? 0 : topHashtags.hashCode);

  factory AnnualReportData.fromJson(Map<String, dynamic> json) =>
      _$AnnualReportDataFromJson(json);

  Map<String, dynamic> toJson() => _$AnnualReportDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Archetype the user corresponds to. This is meant to represent a playful and very coarse overview of the user's posting habits over the year.
enum AnnualReportDataArchetypeEnum {
  @JsonValue(r'lurker')
  lurker(r'lurker'),
  @JsonValue(r'booster')
  booster(r'booster'),
  @JsonValue(r'pollster')
  pollster(r'pollster'),
  @JsonValue(r'replier')
  replier(r'replier'),
  @JsonValue(r'oracle')
  oracle(r'oracle');

  const AnnualReportDataArchetypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
