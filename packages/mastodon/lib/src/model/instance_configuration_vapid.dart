//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance_configuration_vapid.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InstanceConfigurationVapid {
  /// Returns a new [InstanceConfigurationVapid] instance.
  InstanceConfigurationVapid({required this.publicKey});

  /// The server's VAPID public key, used for push notifications, the same as [WebPushSubscription#server_key](https://docs.joinmastodon.org/entities/WebPushSubscription/#server_key).
  @JsonKey(name: r'public_key', required: true, includeIfNull: false)
  final String publicKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstanceConfigurationVapid && other.publicKey == publicKey;

  @override
  int get hashCode => publicKey.hashCode;

  factory InstanceConfigurationVapid.fromJson(Map<String, dynamic> json) =>
      _$InstanceConfigurationVapidFromJson(json);

  Map<String, dynamic> toJson() => _$InstanceConfigurationVapidToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
