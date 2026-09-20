//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/quote_state_enum.dart';
import 'package:mastodon/src/model/status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status_quote.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StatusQuote {
  /// Returns a new [StatusQuote] instance.
  StatusQuote({required this.state, this.quotedStatus, this.quotedStatusId});

  /// The state of the quote. Unknown values should be treated as `unauthorized`.
  @JsonKey(name: r'state', required: true, includeIfNull: false)
  final QuoteStateEnum state;

  /// The status being quoted, if the quote has been accepted. This will be `null`, unless the `state` attribute is `accepted`, `blocked_account`, `blocked_domain`, or `muted_account`, or the wrapping [Status](https://docs.joinmastodon.org/entities/status/) entity has been obtained by calling `DELETE /api/v1/statuses/:id`..
  @JsonKey(name: r'quoted_status', required: false, includeIfNull: false)
  final Status? quotedStatus;

  /// The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status](https://docs.joinmastodon.org/entities/status/) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.
  @JsonKey(name: r'quoted_status_id', required: false, includeIfNull: false)
  final String? quotedStatusId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusQuote &&
          other.state == state &&
          other.quotedStatus == quotedStatus &&
          other.quotedStatusId == quotedStatusId;

  @override
  int get hashCode =>
      state.hashCode + quotedStatus.hashCode + quotedStatusId.hashCode;

  factory StatusQuote.fromJson(Map<String, dynamic> json) =>
      _$StatusQuoteFromJson(json);

  Map<String, dynamic> toJson() => _$StatusQuoteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
