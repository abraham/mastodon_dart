//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_filter_keyword_v2_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateFilterKeywordV2Request {
  /// Returns a new [UpdateFilterKeywordV2Request] instance.
  UpdateFilterKeywordV2Request({required this.keyword, this.wholeWord});

  /// The keyword to be added to the filter group.
  @JsonKey(name: r'keyword', required: true, includeIfNull: false)
  final String keyword;

  /// Whether the keyword should consider word boundaries.
  @JsonKey(name: r'whole_word', required: false, includeIfNull: false)
  final bool? wholeWord;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateFilterKeywordV2Request &&
          other.keyword == keyword &&
          other.wholeWord == wholeWord;

  @override
  int get hashCode => keyword.hashCode + wholeWord.hashCode;

  factory UpdateFilterKeywordV2Request.fromJson(Map<String, dynamic> json) =>
      _$UpdateFilterKeywordV2RequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateFilterKeywordV2RequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
