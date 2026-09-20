//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patch_account_update_credentials_request_fields_attributes_value.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchAccountUpdateCredentialsRequestFieldsAttributesValue {
  /// Returns a new [PatchAccountUpdateCredentialsRequestFieldsAttributesValue] instance.
  PatchAccountUpdateCredentialsRequestFieldsAttributesValue({
    this.name,

    this.value,
  });

  /// The name of the profile field. By default, max 255 characters (specified in [Instance#profile_field_name_limit]).
  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  /// The value of the profile field. By default, max 255 characters (specified in [Instance#profile_field_value_limit]).
  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final String? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatchAccountUpdateCredentialsRequestFieldsAttributesValue &&
          other.name == name &&
          other.value == value;

  @override
  int get hashCode => name.hashCode + value.hashCode;

  factory PatchAccountUpdateCredentialsRequestFieldsAttributesValue.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PatchAccountUpdateCredentialsRequestFieldsAttributesValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
