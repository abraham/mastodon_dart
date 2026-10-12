//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance_configuration_timelines_access_hashtag_feeds.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InstanceConfigurationTimelinesAccessHashtagFeeds {
  /// Returns a new [InstanceConfigurationTimelinesAccessHashtagFeeds] instance.
  InstanceConfigurationTimelinesAccessHashtagFeeds({this.local, this.remote});

  /// Access restrictions for local posts in hashtag feeds.
  @JsonKey(name: r'local', required: false, includeIfNull: false)
  final InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum? local;

  /// Access restrictions for remote posts in hashtag feeds.
  @JsonKey(name: r'remote', required: false, includeIfNull: false)
  final InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum? remote;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstanceConfigurationTimelinesAccessHashtagFeeds &&
          other.local == local &&
          other.remote == remote;

  @override
  int get hashCode =>
      (local == null ? 0 : local.hashCode) +
      (remote == null ? 0 : remote.hashCode);

  factory InstanceConfigurationTimelinesAccessHashtagFeeds.fromJson(
    Map<String, dynamic> json,
  ) => _$InstanceConfigurationTimelinesAccessHashtagFeedsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InstanceConfigurationTimelinesAccessHashtagFeedsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Access restrictions for local posts in hashtag feeds.
enum InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum {
  @JsonValue(r'public')
  public(r'public'),
  @JsonValue(r'authenticated')
  authenticated(r'authenticated');

  const InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum(this.value);

  final String value;

  @override
  String toString() => value;
}

/// Access restrictions for remote posts in hashtag feeds.
enum InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum {
  @JsonValue(r'public')
  public(r'public'),
  @JsonValue(r'authenticated')
  authenticated(r'authenticated'),
  @JsonValue(r'disabled')
  disabled(r'disabled');

  const InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
