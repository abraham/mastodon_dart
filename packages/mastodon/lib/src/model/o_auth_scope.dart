//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// OAuth scope for API access
enum OAuthScope {
  @JsonValue(r'profile')
  profile(r'profile'),
  @JsonValue(r'read')
  read(r'read'),
  @JsonValue(r'write')
  write(r'write'),
  @JsonValue(r'push')
  push(r'push'),
  @JsonValue(r'follow')
  follow(r'follow'),
  @JsonValue(r'admin:read')
  adminColonRead(r'admin:read'),
  @JsonValue(r'admin:write')
  adminColonWrite(r'admin:write'),
  @JsonValue(r'read:accounts')
  readColonAccounts(r'read:accounts'),
  @JsonValue(r'read:blocks')
  readColonBlocks(r'read:blocks'),
  @JsonValue(r'read:bookmarks')
  readColonBookmarks(r'read:bookmarks'),
  @JsonValue(r'read:collections')
  readColonCollections(r'read:collections'),
  @JsonValue(r'read:favourites')
  readColonFavourites(r'read:favourites'),
  @JsonValue(r'read:filters')
  readColonFilters(r'read:filters'),
  @JsonValue(r'read:follows')
  readColonFollows(r'read:follows'),
  @JsonValue(r'read:lists')
  readColonLists(r'read:lists'),
  @JsonValue(r'read:mutes')
  readColonMutes(r'read:mutes'),
  @JsonValue(r'read:notifications')
  readColonNotifications(r'read:notifications'),
  @JsonValue(r'read:search')
  readColonSearch(r'read:search'),
  @JsonValue(r'read:statuses')
  readColonStatuses(r'read:statuses'),
  @JsonValue(r'write:accounts')
  writeColonAccounts(r'write:accounts'),
  @JsonValue(r'write:blocks')
  writeColonBlocks(r'write:blocks'),
  @JsonValue(r'write:bookmarks')
  writeColonBookmarks(r'write:bookmarks'),
  @JsonValue(r'write:collections')
  writeColonCollections(r'write:collections'),
  @JsonValue(r'write:conversations')
  writeColonConversations(r'write:conversations'),
  @JsonValue(r'write:favourites')
  writeColonFavourites(r'write:favourites'),
  @JsonValue(r'write:filters')
  writeColonFilters(r'write:filters'),
  @JsonValue(r'write:follows')
  writeColonFollows(r'write:follows'),
  @JsonValue(r'write:lists')
  writeColonLists(r'write:lists'),
  @JsonValue(r'write:media')
  writeColonMedia(r'write:media'),
  @JsonValue(r'write:mutes')
  writeColonMutes(r'write:mutes'),
  @JsonValue(r'write:notifications')
  writeColonNotifications(r'write:notifications'),
  @JsonValue(r'write:reports')
  writeColonReports(r'write:reports'),
  @JsonValue(r'write:statuses')
  writeColonStatuses(r'write:statuses'),
  @JsonValue(r'admin:read:accounts')
  adminColonReadColonAccounts(r'admin:read:accounts'),
  @JsonValue(r'admin:read:canonical_email_blocks')
  adminColonReadColonCanonicalEmailBlocks(r'admin:read:canonical_email_blocks'),
  @JsonValue(r'admin:read:domain_allows')
  adminColonReadColonDomainAllows(r'admin:read:domain_allows'),
  @JsonValue(r'admin:read:domain_blocks')
  adminColonReadColonDomainBlocks(r'admin:read:domain_blocks'),
  @JsonValue(r'admin:read:email_domain_blocks')
  adminColonReadColonEmailDomainBlocks(r'admin:read:email_domain_blocks'),
  @JsonValue(r'admin:read:ip_blocks')
  adminColonReadColonIpBlocks(r'admin:read:ip_blocks'),
  @JsonValue(r'admin:read:reports')
  adminColonReadColonReports(r'admin:read:reports'),
  @JsonValue(r'admin:write:accounts')
  adminColonWriteColonAccounts(r'admin:write:accounts'),
  @JsonValue(r'admin:write:canonical_email_blocks')
  adminColonWriteColonCanonicalEmailBlocks(
    r'admin:write:canonical_email_blocks',
  ),
  @JsonValue(r'admin:write:domain_allows')
  adminColonWriteColonDomainAllows(r'admin:write:domain_allows'),
  @JsonValue(r'admin:write:domain_blocks')
  adminColonWriteColonDomainBlocks(r'admin:write:domain_blocks'),
  @JsonValue(r'admin:write:email_domain_blocks')
  adminColonWriteColonEmailDomainBlocks(r'admin:write:email_domain_blocks'),
  @JsonValue(r'admin:write:ip_blocks')
  adminColonWriteColonIpBlocks(r'admin:write:ip_blocks'),
  @JsonValue(r'admin:write:reports')
  adminColonWriteColonReports(r'admin:write:reports');

  const OAuthScope(this.value);

  final String value;

  @override
  String toString() => value;
}
