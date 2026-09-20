//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/create_filter_v2_request_keywords_attributes_inner.dart';
import 'package:mastodon/src/model/filter_context_enum.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_filter_v2_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateFilterV2Request {
  /// Returns a new [CreateFilterV2Request] instance.
  CreateFilterV2Request({
    required this.context,

    required this.title,

    this.expiresIn,

    this.filterAction,

    this.keywordsAttributes,
  });

  /// Where the filter should be applied. Specify at least one of `home`, `notifications`, `public`, `thread`, `account`.
  @JsonKey(name: r'context', required: true, includeIfNull: false)
  final List<FilterContextEnum> context;

  /// The name of the filter group.
  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  /// How many seconds from now should the filter expire? Defaults to never expire.
  @JsonKey(name: r'expires_in', required: false, includeIfNull: false)
  final int? expiresIn;

  /// The policy to be applied when the filter is matched. Specify `warn`, `hide` or `blur`.
  @JsonKey(name: r'filter_action', required: false, includeIfNull: false)
  final String? filterAction;

  /// Array of objects with properties: keyword, whole_word
  @JsonKey(name: r'keywords_attributes', required: false, includeIfNull: false)
  final List<CreateFilterV2RequestKeywordsAttributesInner>? keywordsAttributes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateFilterV2Request &&
          other.context == context &&
          other.title == title &&
          other.expiresIn == expiresIn &&
          other.filterAction == filterAction &&
          other.keywordsAttributes == keywordsAttributes;

  @override
  int get hashCode =>
      context.hashCode +
      title.hashCode +
      expiresIn.hashCode +
      filterAction.hashCode +
      keywordsAttributes.hashCode;

  factory CreateFilterV2Request.fromJson(Map<String, dynamic> json) =>
      _$CreateFilterV2RequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateFilterV2RequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
