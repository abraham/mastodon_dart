// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PreferencesCWProxy {
  Preferences postingColonDefaultColonSensitive(
    bool postingColonDefaultColonSensitive,
  );

  Preferences postingColonDefaultColonVisibility(
    StatusVisibilityEnum postingColonDefaultColonVisibility,
  );

  Preferences readingColonExpandColonMedia(
    PreferencesReadingExpandMediaEnum readingColonExpandColonMedia,
  );

  Preferences readingColonExpandColonSpoilers(
    bool readingColonExpandColonSpoilers,
  );

  Preferences postingColonDefaultColonLanguage(
    String? postingColonDefaultColonLanguage,
  );

  Preferences postingColonDefaultColonSpoilerField(
    bool? postingColonDefaultColonSpoilerField,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Preferences(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Preferences(...).copyWith(id: 12, name: "My name")
  /// ```
  Preferences call({
    bool postingColonDefaultColonSensitive,
    StatusVisibilityEnum postingColonDefaultColonVisibility,
    PreferencesReadingExpandMediaEnum readingColonExpandColonMedia,
    bool readingColonExpandColonSpoilers,
    String? postingColonDefaultColonLanguage,
    bool? postingColonDefaultColonSpoilerField,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPreferences.copyWith(...)` or call `instanceOfPreferences.copyWith.fieldName(value)` for a single field.
class _$PreferencesCWProxyImpl implements _$PreferencesCWProxy {
  const _$PreferencesCWProxyImpl(this._value);

  final Preferences _value;

  @override
  Preferences postingColonDefaultColonSensitive(
    bool postingColonDefaultColonSensitive,
  ) => call(
    postingColonDefaultColonSensitive: postingColonDefaultColonSensitive,
  );

  @override
  Preferences postingColonDefaultColonVisibility(
    StatusVisibilityEnum postingColonDefaultColonVisibility,
  ) => call(
    postingColonDefaultColonVisibility: postingColonDefaultColonVisibility,
  );

  @override
  Preferences readingColonExpandColonMedia(
    PreferencesReadingExpandMediaEnum readingColonExpandColonMedia,
  ) => call(readingColonExpandColonMedia: readingColonExpandColonMedia);

  @override
  Preferences readingColonExpandColonSpoilers(
    bool readingColonExpandColonSpoilers,
  ) => call(readingColonExpandColonSpoilers: readingColonExpandColonSpoilers);

  @override
  Preferences postingColonDefaultColonLanguage(
    String? postingColonDefaultColonLanguage,
  ) => call(postingColonDefaultColonLanguage: postingColonDefaultColonLanguage);

  @override
  Preferences postingColonDefaultColonSpoilerField(
    bool? postingColonDefaultColonSpoilerField,
  ) => call(
    postingColonDefaultColonSpoilerField: postingColonDefaultColonSpoilerField,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Preferences(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Preferences(...).copyWith(id: 12, name: "My name")
  /// ```
  @override
  Preferences call({
    Object? postingColonDefaultColonSensitive = const $CopyWithPlaceholder(),
    Object? postingColonDefaultColonVisibility = const $CopyWithPlaceholder(),
    Object? readingColonExpandColonMedia = const $CopyWithPlaceholder(),
    Object? readingColonExpandColonSpoilers = const $CopyWithPlaceholder(),
    Object? postingColonDefaultColonLanguage = const $CopyWithPlaceholder(),
    Object? postingColonDefaultColonSpoilerField = const $CopyWithPlaceholder(),
  }) {
    return Preferences(
      postingColonDefaultColonSensitive:
          postingColonDefaultColonSensitive == const $CopyWithPlaceholder() ||
              postingColonDefaultColonSensitive == null
          ? _value.postingColonDefaultColonSensitive
          // ignore: cast_nullable_to_non_nullable
          : postingColonDefaultColonSensitive as bool,
      postingColonDefaultColonVisibility:
          postingColonDefaultColonVisibility == const $CopyWithPlaceholder() ||
              postingColonDefaultColonVisibility == null
          ? _value.postingColonDefaultColonVisibility
          // ignore: cast_nullable_to_non_nullable
          : postingColonDefaultColonVisibility as StatusVisibilityEnum,
      readingColonExpandColonMedia:
          readingColonExpandColonMedia == const $CopyWithPlaceholder() ||
              readingColonExpandColonMedia == null
          ? _value.readingColonExpandColonMedia
          // ignore: cast_nullable_to_non_nullable
          : readingColonExpandColonMedia as PreferencesReadingExpandMediaEnum,
      readingColonExpandColonSpoilers:
          readingColonExpandColonSpoilers == const $CopyWithPlaceholder() ||
              readingColonExpandColonSpoilers == null
          ? _value.readingColonExpandColonSpoilers
          // ignore: cast_nullable_to_non_nullable
          : readingColonExpandColonSpoilers as bool,
      postingColonDefaultColonLanguage:
          postingColonDefaultColonLanguage == const $CopyWithPlaceholder()
          ? _value.postingColonDefaultColonLanguage
          // ignore: cast_nullable_to_non_nullable
          : postingColonDefaultColonLanguage as String?,
      postingColonDefaultColonSpoilerField:
          postingColonDefaultColonSpoilerField == const $CopyWithPlaceholder()
          ? _value.postingColonDefaultColonSpoilerField
          // ignore: cast_nullable_to_non_nullable
          : postingColonDefaultColonSpoilerField as bool?,
    );
  }
}

extension $PreferencesCopyWith on Preferences {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPreferences.copyWith(...)` or `instanceOfPreferences.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PreferencesCWProxy get copyWith => _$PreferencesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Preferences _$PreferencesFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Preferences',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'posting:default:sensitive',
        'posting:default:visibility',
        'reading:expand:media',
        'reading:expand:spoilers',
      ],
    );
    final val = Preferences(
      postingColonDefaultColonSensitive: $checkedConvert(
        'posting:default:sensitive',
        (v) => v as bool,
      ),
      postingColonDefaultColonVisibility: $checkedConvert(
        'posting:default:visibility',
        (v) => $enumDecode(_$StatusVisibilityEnumEnumMap, v),
      ),
      readingColonExpandColonMedia: $checkedConvert(
        'reading:expand:media',
        (v) => $enumDecode(_$PreferencesReadingExpandMediaEnumEnumMap, v),
      ),
      readingColonExpandColonSpoilers: $checkedConvert(
        'reading:expand:spoilers',
        (v) => v as bool,
      ),
      postingColonDefaultColonLanguage: $checkedConvert(
        'posting:default:language',
        (v) => v as String?,
      ),
      postingColonDefaultColonSpoilerField: $checkedConvert(
        'posting:default:spoiler_field',
        (v) => v as bool?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'postingColonDefaultColonSensitive': 'posting:default:sensitive',
    'postingColonDefaultColonVisibility': 'posting:default:visibility',
    'readingColonExpandColonMedia': 'reading:expand:media',
    'readingColonExpandColonSpoilers': 'reading:expand:spoilers',
    'postingColonDefaultColonLanguage': 'posting:default:language',
    'postingColonDefaultColonSpoilerField': 'posting:default:spoiler_field',
  },
);

Map<String, dynamic> _$PreferencesToJson(Preferences instance) =>
    <String, dynamic>{
      'posting:default:sensitive': instance.postingColonDefaultColonSensitive,
      'posting:default:visibility':
          _$StatusVisibilityEnumEnumMap[instance
              .postingColonDefaultColonVisibility]!,
      'reading:expand:media':
          _$PreferencesReadingExpandMediaEnumEnumMap[instance
              .readingColonExpandColonMedia]!,
      'reading:expand:spoilers': instance.readingColonExpandColonSpoilers,
      'posting:default:language': ?instance.postingColonDefaultColonLanguage,
      'posting:default:spoiler_field':
          ?instance.postingColonDefaultColonSpoilerField,
    };

const _$StatusVisibilityEnumEnumMap = {
  StatusVisibilityEnum.public: 'public',
  StatusVisibilityEnum.unlisted: 'unlisted',
  StatusVisibilityEnum.private: 'private',
  StatusVisibilityEnum.direct: 'direct',
};

const _$PreferencesReadingExpandMediaEnumEnumMap = {
  PreferencesReadingExpandMediaEnum.default_: 'default',
  PreferencesReadingExpandMediaEnum.showAll: 'show_all',
  PreferencesReadingExpandMediaEnum.hideAll: 'hide_all',
};
