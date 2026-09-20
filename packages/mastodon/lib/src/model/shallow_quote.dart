//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:mastodon/src/model/quote_state_enum.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shallow_quote.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ShallowQuote {
  /// Returns a new [ShallowQuote] instance.
  ShallowQuote({required this.state, this.quotedStatusId});

  /// The state of the quote. Unknown values should be treated as `unauthorized`.
  @JsonKey(name: r'state', required: true, includeIfNull: false)
  final QuoteStateEnum state;

  /// The identifier of the status being quoted. This will be `null`, unless the `state` attribute is one of `accepted`, `blocked_account`, `blocked_domain` or `muted_account`, or the wrapping [Status](https://docs.joinmastodon.org/entities/status/) entity has been obtained by calling `DELETE /api/v1/statuses/:id`.
  @JsonKey(name: r'quoted_status_id', required: false, includeIfNull: false)
  final String? quotedStatusId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShallowQuote &&
          other.state == state &&
          other.quotedStatusId == quotedStatusId;

  @override
  int get hashCode =>
      state.hashCode + (quotedStatusId == null ? 0 : quotedStatusId.hashCode);

  factory ShallowQuote.fromJson(Map<String, dynamic> json) =>
      _$ShallowQuoteFromJson(json);

  Map<String, dynamic> toJson() => _$ShallowQuoteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
