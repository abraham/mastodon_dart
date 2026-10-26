// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_list_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateListRequestCWProxy {
  UpdateListRequest title(String title);

  UpdateListRequest exclusive(bool? exclusive);

  UpdateListRequest repliesPolicy(ListRepliesPolicyEnum? repliesPolicy);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateListRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateListRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateListRequest call({
    String title,
    bool? exclusive,
    ListRepliesPolicyEnum? repliesPolicy,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateListRequest.copyWith(...)` or call `instanceOfUpdateListRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateListRequestCWProxyImpl implements _$UpdateListRequestCWProxy {
  const _$UpdateListRequestCWProxyImpl(this._value);

  final UpdateListRequest _value;

  @override
  UpdateListRequest title(String title) => call(title: title);

  @override
  UpdateListRequest exclusive(bool? exclusive) => call(exclusive: exclusive);

  @override
  UpdateListRequest repliesPolicy(ListRepliesPolicyEnum? repliesPolicy) =>
      call(repliesPolicy: repliesPolicy);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateListRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateListRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  UpdateListRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? exclusive = const $CopyWithPlaceholder(),
    Object? repliesPolicy = const $CopyWithPlaceholder(),
  }) {
    return UpdateListRequest(
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      exclusive: exclusive == const $CopyWithPlaceholder()
          ? _value.exclusive
          // ignore: cast_nullable_to_non_nullable
          : exclusive as bool?,
      repliesPolicy: repliesPolicy == const $CopyWithPlaceholder()
          ? _value.repliesPolicy
          // ignore: cast_nullable_to_non_nullable
          : repliesPolicy as ListRepliesPolicyEnum?,
    );
  }
}

extension $UpdateListRequestCopyWith on UpdateListRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateListRequest.copyWith(...)` or `instanceOfUpdateListRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateListRequestCWProxy get copyWith =>
      _$UpdateListRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateListRequest _$UpdateListRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateListRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['title']);
      final val = UpdateListRequest(
        title: $checkedConvert('title', (v) => v as String),
        exclusive: $checkedConvert('exclusive', (v) => v as bool?),
        repliesPolicy: $checkedConvert(
          'replies_policy',
          (v) =>
              $enumDecodeNullable(_$ListRepliesPolicyEnumEnumMap, v) ??
              ListRepliesPolicyEnum.list,
        ),
      );
      return val;
    }, fieldKeyMap: const {'repliesPolicy': 'replies_policy'});

Map<String, dynamic> _$UpdateListRequestToJson(UpdateListRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'exclusive': ?instance.exclusive,
      'replies_policy': ?_$ListRepliesPolicyEnumEnumMap[instance.repliesPolicy],
    };

const _$ListRepliesPolicyEnumEnumMap = {
  ListRepliesPolicyEnum.followed: 'followed',
  ListRepliesPolicyEnum.list: 'list',
  ListRepliesPolicyEnum.none: 'none',
};
