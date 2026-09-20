//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/preferences_reading_expand_media_enum.dart';
import 'package:mastodon/src/model/status_visibility_enum.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'preferences.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Preferences {
  /// Returns a new [Preferences] instance.
  Preferences({
    required this.postingColonDefaultColonSensitive,

    required this.postingColonDefaultColonVisibility,

    required this.readingColonExpandColonMedia,

    required this.readingColonExpandColonSpoilers,

    this.postingColonDefaultColonLanguage,
  });

  /// Default sensitivity flag for new posts. Equivalent to [CredentialAccount#source\\[sensitive\\]](https://docs.joinmastodon.org/entities/Account/#source-sensitive).
  @JsonKey(
    name: r'posting:default:sensitive',
    required: true,
    includeIfNull: false,
  )
  final bool postingColonDefaultColonSensitive;

  /// Default visibility for new posts. Equivalent to [CredentialAccount#source\\[privacy\\]](https://docs.joinmastodon.org/entities/Account/#source-privacy).
  @JsonKey(
    name: r'posting:default:visibility',
    required: true,
    includeIfNull: false,
  )
  final StatusVisibilityEnum postingColonDefaultColonVisibility;

  /// Whether media attachments should be automatically displayed or blurred/hidden.
  @JsonKey(name: r'reading:expand:media', required: true, includeIfNull: false)
  final PreferencesReadingExpandMediaEnum readingColonExpandColonMedia;

  /// Whether CWs should be expanded by default.
  @JsonKey(
    name: r'reading:expand:spoilers',
    required: true,
    includeIfNull: false,
  )
  final bool readingColonExpandColonSpoilers;

  /// Default language for new posts. Equivalent to [CredentialAccount#source\\[language\\]](https://docs.joinmastodon.org/entities/Account/#source-language)
  @JsonKey(
    name: r'posting:default:language',
    required: false,
    includeIfNull: false,
  )
  final String? postingColonDefaultColonLanguage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Preferences &&
          other.postingColonDefaultColonSensitive ==
              postingColonDefaultColonSensitive &&
          other.postingColonDefaultColonVisibility ==
              postingColonDefaultColonVisibility &&
          other.readingColonExpandColonMedia == readingColonExpandColonMedia &&
          other.readingColonExpandColonSpoilers ==
              readingColonExpandColonSpoilers &&
          other.postingColonDefaultColonLanguage ==
              postingColonDefaultColonLanguage;

  @override
  int get hashCode =>
      postingColonDefaultColonSensitive.hashCode +
      postingColonDefaultColonVisibility.hashCode +
      readingColonExpandColonMedia.hashCode +
      readingColonExpandColonSpoilers.hashCode +
      (postingColonDefaultColonLanguage == null
          ? 0
          : postingColonDefaultColonLanguage.hashCode);

  factory Preferences.fromJson(Map<String, dynamic> json) =>
      _$PreferencesFromJson(json);

  Map<String, dynamic> toJson() => _$PreferencesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
