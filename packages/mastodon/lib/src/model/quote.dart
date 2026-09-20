//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/quote_state_enum.dart';
import 'package:mastodon/src/model/status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quote.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Quote {
  /// Returns a new [Quote] instance.
  Quote({required this.state, this.quotedStatus});

  /// The state of the quote. Unknown values should be treated as `unauthorized`.
  @JsonKey(name: r'state', required: true, includeIfNull: false)
  final QuoteStateEnum state;

  /// The status being quoted, if the quote has been accepted. This will be `null`, unless the `state` attribute is `accepted`, `blocked_account`, `blocked_domain`, or `muted_account`, or the wrapping [Status](https://docs.joinmastodon.org/entities/status/) entity has been obtained by calling `DELETE /api/v1/statuses/:id`..
  @JsonKey(name: r'quoted_status', required: false, includeIfNull: false)
  final Status? quotedStatus;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Quote &&
          other.state == state &&
          other.quotedStatus == quotedStatus;

  @override
  int get hashCode =>
      state.hashCode + (quotedStatus == null ? 0 : quotedStatus.hashCode);

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
