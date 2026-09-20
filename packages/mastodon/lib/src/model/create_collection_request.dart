//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_collection_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCollectionRequest {
  /// Returns a new [CreateCollectionRequest] instance.
  CreateCollectionRequest({
    required this.name,

    this.accountIds,

    this.description,

    this.discoverable,

    this.language,

    this.sensitive,

    this.tagName,
  });

  /// A name for this Collection, max. 40 characters. String is taken \"as is\", which means there is currently no special handling of URLs and hashtags and no support for custom emoji.
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// IDs of the accounts to feature in this Collection
  @JsonKey(name: r'account_ids', required: false, includeIfNull: false)
  final List<String>? accountIds;

  /// A longer description of this Collection, max. 100 characters. String is taken \"as is\", which means there is currently no special handling of URLs a nd hashtags and no support for custom emoji.
  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  /// Whether this Collection should appear on the user's profile, in search results and other discovery mechanisms
  @JsonKey(name: r'discoverable', required: false, includeIfNull: false)
  final bool? discoverable;

  /// One of Mastodon's supported language codes (two letter ISO 639-1 plus exceptions)
  @JsonKey(name: r'language', required: false, includeIfNull: false)
  final String? language;

  /// Whether this Collection should be marked as sensitive
  @JsonKey(name: r'sensitive', required: false, includeIfNull: false)
  final bool? sensitive;

  /// A single hashtag that describes the Collection
  @JsonKey(name: r'tag_name', required: false, includeIfNull: false)
  final String? tagName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateCollectionRequest &&
          other.name == name &&
          other.accountIds == accountIds &&
          other.description == description &&
          other.discoverable == discoverable &&
          other.language == language &&
          other.sensitive == sensitive &&
          other.tagName == tagName;

  @override
  int get hashCode =>
      name.hashCode +
      accountIds.hashCode +
      description.hashCode +
      discoverable.hashCode +
      language.hashCode +
      sensitive.hashCode +
      tagName.hashCode;

  factory CreateCollectionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCollectionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCollectionRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
