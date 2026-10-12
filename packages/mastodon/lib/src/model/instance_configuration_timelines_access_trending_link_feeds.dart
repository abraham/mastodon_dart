//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance_configuration_timelines_access_trending_link_feeds.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InstanceConfigurationTimelinesAccessTrendingLinkFeeds {
  /// Returns a new [InstanceConfigurationTimelinesAccessTrendingLinkFeeds] instance.
  InstanceConfigurationTimelinesAccessTrendingLinkFeeds({
    this.local,

    this.remote,
  });

  /// Access restrictions for local posts in the trending link feeds.
  @JsonKey(name: r'local', required: false, includeIfNull: false)
  final InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum? local;

  /// Access restrictions for remote posts in trending link feeds.
  @JsonKey(name: r'remote', required: false, includeIfNull: false)
  final InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum? remote;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstanceConfigurationTimelinesAccessTrendingLinkFeeds &&
          other.local == local &&
          other.remote == remote;

  @override
  int get hashCode =>
      (local == null ? 0 : local.hashCode) +
      (remote == null ? 0 : remote.hashCode);

  factory InstanceConfigurationTimelinesAccessTrendingLinkFeeds.fromJson(
    Map<String, dynamic> json,
  ) => _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InstanceConfigurationTimelinesAccessTrendingLinkFeedsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Access restrictions for local posts in the trending link feeds.
enum InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum {
  @JsonValue(r'public')
  public(r'public'),
  @JsonValue(r'authenticated')
  authenticated(r'authenticated');

  const InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum(
    this.value,
  );

  final String value;

  @override
  String toString() => value;
}

/// Access restrictions for remote posts in trending link feeds.
enum InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum {
  @JsonValue(r'public')
  public(r'public'),
  @JsonValue(r'authenticated')
  authenticated(r'authenticated'),
  @JsonValue(r'disabled')
  disabled(r'disabled');

  const InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum(
    this.value,
  );

  final String value;

  @override
  String toString() => value;
}
