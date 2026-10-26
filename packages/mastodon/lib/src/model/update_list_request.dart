//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/list_replies_policy_enum.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_list_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateListRequest {
  /// Returns a new [UpdateListRequest] instance.
  UpdateListRequest({
    required this.title,

    this.exclusive,

    this.repliesPolicy = ListRepliesPolicyEnum.list,
  });

  /// The title of the list to be created.
  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  /// Whether members of this list need to get removed from the “Home” feed.
  @JsonKey(name: r'exclusive', required: false, includeIfNull: false)
  final bool? exclusive;

  /// One of `followed`, `list`, or `none`. Defaults to `list`.
  @JsonKey(
    defaultValue: ListRepliesPolicyEnum.list,
    name: r'replies_policy',
    required: false,
    includeIfNull: false,
  )
  final ListRepliesPolicyEnum? repliesPolicy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateListRequest &&
          other.title == title &&
          other.exclusive == exclusive &&
          other.repliesPolicy == repliesPolicy;

  @override
  int get hashCode =>
      title.hashCode + exclusive.hashCode + repliesPolicy.hashCode;

  factory UpdateListRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateListRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
