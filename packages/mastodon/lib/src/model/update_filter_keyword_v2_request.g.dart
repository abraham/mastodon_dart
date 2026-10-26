// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_filter_keyword_v2_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateFilterKeywordV2RequestCWProxy {
  UpdateFilterKeywordV2Request keyword(String keyword);

  UpdateFilterKeywordV2Request wholeWord(bool? wholeWord);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateFilterKeywordV2Request(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateFilterKeywordV2Request(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateFilterKeywordV2Request call({String keyword, bool? wholeWord});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateFilterKeywordV2Request.copyWith(...)` or call `instanceOfUpdateFilterKeywordV2Request.copyWith.fieldName(value)` for a single field.
class _$UpdateFilterKeywordV2RequestCWProxyImpl
    implements _$UpdateFilterKeywordV2RequestCWProxy {
  const _$UpdateFilterKeywordV2RequestCWProxyImpl(this._value);

  final UpdateFilterKeywordV2Request _value;

  @override
  UpdateFilterKeywordV2Request keyword(String keyword) =>
      call(keyword: keyword);

  @override
  UpdateFilterKeywordV2Request wholeWord(bool? wholeWord) =>
      call(wholeWord: wholeWord);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateFilterKeywordV2Request(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateFilterKeywordV2Request(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  UpdateFilterKeywordV2Request call({
    Object? keyword = const $CopyWithPlaceholder(),
    Object? wholeWord = const $CopyWithPlaceholder(),
  }) {
    return UpdateFilterKeywordV2Request(
      keyword: keyword == const $CopyWithPlaceholder() || keyword == null
          ? _value.keyword
          // ignore: cast_nullable_to_non_nullable
          : keyword as String,
      wholeWord: wholeWord == const $CopyWithPlaceholder()
          ? _value.wholeWord
          // ignore: cast_nullable_to_non_nullable
          : wholeWord as bool?,
    );
  }
}

extension $UpdateFilterKeywordV2RequestCopyWith
    on UpdateFilterKeywordV2Request {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateFilterKeywordV2Request.copyWith(...)` or `instanceOfUpdateFilterKeywordV2Request.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateFilterKeywordV2RequestCWProxy get copyWith =>
      _$UpdateFilterKeywordV2RequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateFilterKeywordV2Request _$UpdateFilterKeywordV2RequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateFilterKeywordV2Request', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['keyword']);
  final val = UpdateFilterKeywordV2Request(
    keyword: $checkedConvert('keyword', (v) => v as String),
    wholeWord: $checkedConvert('whole_word', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'wholeWord': 'whole_word'});

Map<String, dynamic> _$UpdateFilterKeywordV2RequestToJson(
  UpdateFilterKeywordV2Request instance,
) => <String, dynamic>{
  'keyword': instance.keyword,
  'whole_word': ?instance.wholeWord,
};
