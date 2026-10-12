//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/status_quote.dart';
import 'package:mastodon/src/model/status.dart';
import 'package:mastodon/src/model/status_mention.dart';
import 'package:mastodon/src/model/collection.dart';
import 'package:mastodon/src/model/quote_approval.dart';
import 'package:mastodon/src/model/media_attachment.dart';
import 'package:mastodon/src/model/status_application.dart';
import 'package:mastodon/src/model/preview_card.dart';
import 'package:mastodon/src/model/custom_emoji.dart';
import 'package:mastodon/src/model/poll.dart';
import 'package:mastodon/src/model/status_visibility_enum.dart';
import 'package:mastodon/src/model/account.dart';
import 'package:mastodon/src/model/filter_result.dart';
import 'package:mastodon/src/model/status_tag.dart';
import 'package:mastodon/src/model/scheduled_status_params.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_status200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateStatus200Response {
  /// Returns a new [CreateStatus200Response] instance.
  CreateStatus200Response({
    required this.account,

    required this.content,

    required this.createdAt,

    required this.emojis,

    required this.favouritesCount,

    required this.id,

    required this.mediaAttachments,

    required this.mentions,

    required this.reblogsCount,

    required this.repliesCount,

    required this.sensitive,

    required this.spoilerText,

    required this.tags,

    required this.uri,

    required this.visibility,

    required this.params,

    required this.scheduledAt,

    this.application,

    this.bookmarked,

    this.card,

    this.editedAt,

    this.favourited,

    this.filtered,

    this.inReplyToAccountId,

    this.inReplyToId,

    this.language,

    this.muted,

    this.pinned,

    this.poll,

    this.quote,

    this.quoteApproval,

    this.quotesCount,

    this.reblog,

    this.reblogged,

    this.taggedCollections,

    this.text,

    this.url,
  });

  /// The account that authored this status.
  @JsonKey(name: r'account', required: true, includeIfNull: false)
  final Account account;

  /// HTML-encoded status content.
  @JsonKey(name: r'content', required: true, includeIfNull: false)
  final String content;

  /// The date when this status was created.
  @JsonKey(name: r'created_at', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// Custom emoji to be used when rendering status content.
  @JsonKey(name: r'emojis', required: true, includeIfNull: false)
  final List<CustomEmoji> emojis;

  /// How many favourites this status has received.
  @JsonKey(name: r'favourites_count', required: true, includeIfNull: false)
  final int favouritesCount;

  /// ID of the scheduled status in the database.
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Media that will be attached when the status is posted.
  @JsonKey(name: r'media_attachments', required: true, includeIfNull: false)
  final List<MediaAttachment> mediaAttachments;

  /// Mentions of users within the status content.
  @JsonKey(name: r'mentions', required: true, includeIfNull: false)
  final List<StatusMention> mentions;

  /// How many boosts this status has received.
  @JsonKey(name: r'reblogs_count', required: true, includeIfNull: false)
  final int reblogsCount;

  /// How many replies this status has received.
  @JsonKey(name: r'replies_count', required: true, includeIfNull: false)
  final int repliesCount;

  /// Is this status marked as sensitive content?
  @JsonKey(name: r'sensitive', required: true, includeIfNull: false)
  final bool sensitive;

  /// Subject or summary line, below which status content is collapsed until expanded.
  @JsonKey(name: r'spoiler_text', required: true, includeIfNull: false)
  final String spoilerText;

  /// Hashtags used within the status content.
  @JsonKey(name: r'tags', required: true, includeIfNull: false)
  final List<StatusTag> tags;

  /// URI of the status used for federation.
  @JsonKey(name: r'uri', required: true, includeIfNull: false)
  final String uri;

  /// Visibility of this status.
  @JsonKey(name: r'visibility', required: true, includeIfNull: false)
  final StatusVisibilityEnum visibility;

  @JsonKey(name: r'params', required: true, includeIfNull: false)
  final ScheduledStatusParams params;

  /// The timestamp for when the status will be posted.
  @JsonKey(name: r'scheduled_at', required: true, includeIfNull: false)
  final DateTime scheduledAt;

  @JsonKey(name: r'application', required: false, includeIfNull: false)
  final StatusApplication? application;

  /// If the current token has an authorized user: Have you bookmarked this status?
  @JsonKey(name: r'bookmarked', required: false, includeIfNull: false)
  final bool? bookmarked;

  /// Preview card for links included within status content.
  @JsonKey(name: r'card', required: false, includeIfNull: false)
  final PreviewCard? card;

  /// Timestamp of when the status was last edited.
  @JsonKey(name: r'edited_at', required: false, includeIfNull: false)
  final DateTime? editedAt;

  /// If the current token has an authorized user: Have you favourited this status?
  @JsonKey(name: r'favourited', required: false, includeIfNull: false)
  final bool? favourited;

  /// If the current token has an authorized user: The filter and keywords that matched this status.
  @JsonKey(name: r'filtered', required: false, includeIfNull: false)
  final List<FilterResult>? filtered;

  /// Might be the ID of the account that authored the status being replied to. This sometimes skips over self-replies. If status A was posted by account 1, and account 2 posts statuses B, C, and D as a chain of replies to status A, statuses B, C, and D will all have `in_reply_to_account_id` = 1 (instead of C and D having `in_reply_to_account_id` = 2). However, if status A was posted by account 1, and account 1 posts status B as a direct reply to A, B will have an `in_reply_to_account_id` = 1 (instead of null).
  @JsonKey(
    name: r'in_reply_to_account_id',
    required: false,
    includeIfNull: false,
  )
  final String? inReplyToAccountId;

  /// ID of the status being replied to.
  @JsonKey(name: r'in_reply_to_id', required: false, includeIfNull: false)
  final String? inReplyToId;

  /// Primary language of this status.
  @JsonKey(name: r'language', required: false, includeIfNull: false)
  final String? language;

  /// If the current token has an authorized user: Have you muted notifications for this status's conversation?
  @JsonKey(name: r'muted', required: false, includeIfNull: false)
  final bool? muted;

  /// If the current token has an authorized user: Have you pinned this status? Only appears if the status is pinnable.
  @JsonKey(name: r'pinned', required: false, includeIfNull: false)
  final bool? pinned;

  /// The poll attached to the status.
  @JsonKey(name: r'poll', required: false, includeIfNull: false)
  final Poll? poll;

  @JsonKey(name: r'quote', required: false, includeIfNull: false)
  final StatusQuote? quote;

  /// Summary of the post quote's approval policy and how it applies to the user making the request, that is, whether the user can be expected to be allowed to quote that post
  @JsonKey(name: r'quote_approval', required: false, includeIfNull: false)
  final QuoteApproval? quoteApproval;

  /// How many accepted quotes this status has.
  @JsonKey(name: r'quotes_count', required: false, includeIfNull: false)
  final int? quotesCount;

  /// The status being reblogged.
  @JsonKey(name: r'reblog', required: false, includeIfNull: false)
  final Status? reblog;

  /// If the current token has an authorized user: Have you boosted this status?
  @JsonKey(name: r'reblogged', required: false, includeIfNull: false)
  final bool? reblogged;

  /// If `content` includes links to Collections that the server recognized, this includes the actual Collections.
  @JsonKey(name: r'tagged_collections', required: false, includeIfNull: false)
  final List<Collection>? taggedCollections;

  /// Plain-text source of a status. Returned instead of `content` when status is deleted, so the user may redraft from the source text without the client having to reverse-engineer the original text from the HTML content.
  @JsonKey(name: r'text', required: false, includeIfNull: false)
  final String? text;

  /// A link to the status's HTML representation.
  @JsonKey(name: r'url', required: false, includeIfNull: false)
  final Uri? url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateStatus200Response &&
          other.account == account &&
          other.content == content &&
          other.createdAt == createdAt &&
          other.emojis == emojis &&
          other.favouritesCount == favouritesCount &&
          other.id == id &&
          other.mediaAttachments == mediaAttachments &&
          other.mentions == mentions &&
          other.reblogsCount == reblogsCount &&
          other.repliesCount == repliesCount &&
          other.sensitive == sensitive &&
          other.spoilerText == spoilerText &&
          other.tags == tags &&
          other.uri == uri &&
          other.visibility == visibility &&
          other.params == params &&
          other.scheduledAt == scheduledAt &&
          other.application == application &&
          other.bookmarked == bookmarked &&
          other.card == card &&
          other.editedAt == editedAt &&
          other.favourited == favourited &&
          other.filtered == filtered &&
          other.inReplyToAccountId == inReplyToAccountId &&
          other.inReplyToId == inReplyToId &&
          other.language == language &&
          other.muted == muted &&
          other.pinned == pinned &&
          other.poll == poll &&
          other.quote == quote &&
          other.quoteApproval == quoteApproval &&
          other.quotesCount == quotesCount &&
          other.reblog == reblog &&
          other.reblogged == reblogged &&
          other.taggedCollections == taggedCollections &&
          other.text == text &&
          other.url == url;

  @override
  int get hashCode =>
      account.hashCode +
      content.hashCode +
      createdAt.hashCode +
      emojis.hashCode +
      favouritesCount.hashCode +
      id.hashCode +
      mediaAttachments.hashCode +
      mentions.hashCode +
      reblogsCount.hashCode +
      repliesCount.hashCode +
      sensitive.hashCode +
      spoilerText.hashCode +
      tags.hashCode +
      uri.hashCode +
      visibility.hashCode +
      params.hashCode +
      scheduledAt.hashCode +
      (application == null ? 0 : application.hashCode) +
      (bookmarked == null ? 0 : bookmarked.hashCode) +
      (card == null ? 0 : card.hashCode) +
      (editedAt == null ? 0 : editedAt.hashCode) +
      (favourited == null ? 0 : favourited.hashCode) +
      (filtered == null ? 0 : filtered.hashCode) +
      (inReplyToAccountId == null ? 0 : inReplyToAccountId.hashCode) +
      (inReplyToId == null ? 0 : inReplyToId.hashCode) +
      (language == null ? 0 : language.hashCode) +
      (muted == null ? 0 : muted.hashCode) +
      (pinned == null ? 0 : pinned.hashCode) +
      (poll == null ? 0 : poll.hashCode) +
      (quote == null ? 0 : quote.hashCode) +
      (quoteApproval == null ? 0 : quoteApproval.hashCode) +
      (quotesCount == null ? 0 : quotesCount.hashCode) +
      (reblog == null ? 0 : reblog.hashCode) +
      (reblogged == null ? 0 : reblogged.hashCode) +
      (taggedCollections == null ? 0 : taggedCollections.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (url == null ? 0 : url.hashCode);

  factory CreateStatus200Response.fromJson(Map<String, dynamic> json) =>
      _$CreateStatus200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateStatus200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
