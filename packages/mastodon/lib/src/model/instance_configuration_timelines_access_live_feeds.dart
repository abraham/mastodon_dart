//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance_configuration_timelines_access_live_feeds.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InstanceConfigurationTimelinesAccessLiveFeeds {
  /// Returns a new [InstanceConfigurationTimelinesAccessLiveFeeds] instance.
  InstanceConfigurationTimelinesAccessLiveFeeds({this.local, this.remote});

  /// Access restrictions for local posts in the public feed.
  @JsonKey(name: r'local', required: false, includeIfNull: false)
  final InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum? local;

  /// Access restrictions for remote posts in the public feed.
  @JsonKey(name: r'remote', required: false, includeIfNull: false)
  final InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum? remote;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstanceConfigurationTimelinesAccessLiveFeeds &&
          other.local == local &&
          other.remote == remote;

  @override
  int get hashCode =>
      (local == null ? 0 : local.hashCode) +
      (remote == null ? 0 : remote.hashCode);

  factory InstanceConfigurationTimelinesAccessLiveFeeds.fromJson(
    Map<String, dynamic> json,
  ) => _$InstanceConfigurationTimelinesAccessLiveFeedsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InstanceConfigurationTimelinesAccessLiveFeedsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Access restrictions for local posts in the public feed.
enum InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum {
  @JsonValue(r'public')
  public(r'public'),
  @JsonValue(r'authenticated')
  authenticated(r'authenticated'),
  @JsonValue(r'disabled')
  disabled(r'disabled');

  const InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum(this.value);

  final String value;

  @override
  String toString() => value;
}

/// Access restrictions for remote posts in the public feed.
enum InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum {
  @JsonValue(r'public')
  public(r'public'),
  @JsonValue(r'authenticated')
  authenticated(r'authenticated'),
  @JsonValue(r'disabled')
  disabled(r'disabled');

  const InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
