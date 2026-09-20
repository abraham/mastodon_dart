//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/instance_icon.dart';
import 'package:mastodon/src/model/instance_registrations.dart';
import 'package:mastodon/src/model/rule.dart';
import 'package:mastodon/src/model/instance_usage.dart';
import 'package:mastodon/src/model/instance_configuration.dart';
import 'package:mastodon/src/model/instance_thumbnail.dart';
import 'package:mastodon/src/model/instance_api_versions.dart';
import 'package:mastodon/src/model/instance_contact.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instance.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Instance {
  /// Returns a new [Instance] instance.
  Instance({
    required this.apiVersions,

    required this.configuration,

    required this.contact,

    required this.description,

    required this.domain,

    required this.icon,

    required this.languages,

    required this.registrations,

    required this.rules,

    required this.sourceUrl,

    required this.thumbnail,

    required this.title,

    required this.usage,

    required this.version,

    this.wrapstodon,
  });

  @JsonKey(name: r'api_versions', required: true, includeIfNull: false)
  final InstanceApiVersions apiVersions;

  @JsonKey(name: r'configuration', required: true, includeIfNull: false)
  final InstanceConfiguration configuration;

  @JsonKey(name: r'contact', required: true, includeIfNull: false)
  final InstanceContact contact;

  /// A short, plain-text description defined by the admin.
  @JsonKey(name: r'description', required: true, includeIfNull: false)
  final String description;

  /// The WebFinger domain name of the server.
  @JsonKey(name: r'domain', required: true, includeIfNull: false)
  final String domain;

  /// The list of available size variants for this server's configured icon.
  @JsonKey(name: r'icon', required: true, includeIfNull: false)
  final List<InstanceIcon> icon;

  /// Primary languages of the website and its staff.
  @JsonKey(name: r'languages', required: true, includeIfNull: false)
  final List<String> languages;

  @JsonKey(name: r'registrations', required: true, includeIfNull: false)
  final InstanceRegistrations registrations;

  /// An itemized list of rules for this website.
  @JsonKey(name: r'rules', required: true, includeIfNull: false)
  final List<Rule> rules;

  /// The URL for the source code of the software running on this server, per the AGPL license requirements.
  @JsonKey(name: r'source_url', required: true, includeIfNull: false)
  final Uri sourceUrl;

  @JsonKey(name: r'thumbnail', required: true, includeIfNull: false)
  final InstanceThumbnail thumbnail;

  /// The title of the website.
  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  @JsonKey(name: r'usage', required: true, includeIfNull: false)
  final InstanceUsage usage;

  /// The version of Mastodon installed on the server.
  @JsonKey(name: r'version', required: true, includeIfNull: false)
  final String version;

  /// The current Wrapstodon ([Annual report](https://docs.joinmastodon.org/methods/annual_reports/) campaign identifier (year), if any.
  @JsonKey(name: r'wrapstodon', required: false, includeIfNull: false)
  final String? wrapstodon;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Instance &&
          other.apiVersions == apiVersions &&
          other.configuration == configuration &&
          other.contact == contact &&
          other.description == description &&
          other.domain == domain &&
          other.icon == icon &&
          other.languages == languages &&
          other.registrations == registrations &&
          other.rules == rules &&
          other.sourceUrl == sourceUrl &&
          other.thumbnail == thumbnail &&
          other.title == title &&
          other.usage == usage &&
          other.version == version &&
          other.wrapstodon == wrapstodon;

  @override
  int get hashCode =>
      apiVersions.hashCode +
      configuration.hashCode +
      contact.hashCode +
      description.hashCode +
      domain.hashCode +
      icon.hashCode +
      languages.hashCode +
      registrations.hashCode +
      rules.hashCode +
      sourceUrl.hashCode +
      thumbnail.hashCode +
      title.hashCode +
      usage.hashCode +
      version.hashCode +
      (wrapstodon == null ? 0 : wrapstodon.hashCode);

  factory Instance.fromJson(Map<String, dynamic> json) =>
      _$InstanceFromJson(json);

  Map<String, dynamic> toJson() => _$InstanceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
