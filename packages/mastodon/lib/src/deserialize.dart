import 'package:mastodon/src/model/account.dart';
import 'package:mastodon/src/model/account_role.dart';
import 'package:mastodon/src/model/account_warning.dart';
import 'package:mastodon/src/model/admin_account.dart';
import 'package:mastodon/src/model/admin_canonical_email_block.dart';
import 'package:mastodon/src/model/admin_cohort.dart';
import 'package:mastodon/src/model/admin_dimension.dart';
import 'package:mastodon/src/model/admin_dimension_data.dart';
import 'package:mastodon/src/model/admin_domain_allow.dart';
import 'package:mastodon/src/model/admin_domain_block.dart';
import 'package:mastodon/src/model/admin_email_domain_block.dart';
import 'package:mastodon/src/model/admin_email_domain_block_history.dart';
import 'package:mastodon/src/model/admin_ip.dart';
import 'package:mastodon/src/model/admin_ip_block.dart';
import 'package:mastodon/src/model/admin_measure.dart';
import 'package:mastodon/src/model/admin_measure_data.dart';
import 'package:mastodon/src/model/admin_report.dart';
import 'package:mastodon/src/model/admin_tag.dart';
import 'package:mastodon/src/model/announcement.dart';
import 'package:mastodon/src/model/announcement_account.dart';
import 'package:mastodon/src/model/announcement_status.dart';
import 'package:mastodon/src/model/annual_report.dart';
import 'package:mastodon/src/model/annual_report_data.dart';
import 'package:mastodon/src/model/appeal.dart';
import 'package:mastodon/src/model/application.dart';
import 'package:mastodon/src/model/async_refresh.dart';
import 'package:mastodon/src/model/async_refresh_response.dart';
import 'package:mastodon/src/model/base_status.dart';
import 'package:mastodon/src/model/cohort_data.dart';
import 'package:mastodon/src/model/collection.dart';
import 'package:mastodon/src/model/collection_item.dart';
import 'package:mastodon/src/model/collection_with_accounts.dart';
import 'package:mastodon/src/model/collections.dart';
import 'package:mastodon/src/model/context.dart';
import 'package:mastodon/src/model/conversation.dart';
import 'package:mastodon/src/model/count_response.dart';
import 'package:mastodon/src/model/create_account_request.dart';
import 'package:mastodon/src/model/create_app_request.dart';
import 'package:mastodon/src/model/create_collection_request.dart';
import 'package:mastodon/src/model/create_domain_block_request.dart';
import 'package:mastodon/src/model/create_email_confirmations_request.dart';
import 'package:mastodon/src/model/create_featured_tag_request.dart';
import 'package:mastodon/src/model/create_filter_request.dart';
import 'package:mastodon/src/model/create_filter_v2_request.dart';
import 'package:mastodon/src/model/create_filter_v2_request_keywords_attributes_inner.dart';
import 'package:mastodon/src/model/create_list_request.dart';
import 'package:mastodon/src/model/create_marker_request.dart';
import 'package:mastodon/src/model/create_marker_request_home.dart';
import 'package:mastodon/src/model/create_marker_request_notifications.dart';
import 'package:mastodon/src/model/create_push_subscription_request.dart';
import 'package:mastodon/src/model/create_push_subscription_request_data.dart';
import 'package:mastodon/src/model/create_push_subscription_request_data_alerts.dart';
import 'package:mastodon/src/model/create_push_subscription_request_subscription.dart';
import 'package:mastodon/src/model/create_push_subscription_request_subscription_keys.dart';
import 'package:mastodon/src/model/create_report_request.dart';
import 'package:mastodon/create_status200_response.dart';
import 'package:mastodon/create_status_request.dart';
import 'package:mastodon/src/model/credential_account.dart';
import 'package:mastodon/src/model/credential_account_source.dart';
import 'package:mastodon/src/model/credential_application.dart';
import 'package:mastodon/src/model/custom_emoji.dart';
import 'package:mastodon/src/model/custom_error422.dart';
import 'package:mastodon/src/model/custom_error422_error.dart';
import 'package:mastodon/src/model/custom_error422_error_details.dart';
import 'package:mastodon/src/model/custom_error422_error_details_name_inner.dart';
import 'package:mastodon/src/model/delete_domain_blocks_request.dart';
import 'package:mastodon/src/model/delete_list_accounts_request.dart';
import 'package:mastodon/src/model/discover_oauth_server_configuration_response.dart';
import 'package:mastodon/src/model/domain_block.dart';
import 'package:mastodon/src/model/error.dart';
import 'package:mastodon/src/model/extended_description.dart';
import 'package:mastodon/src/model/familiar_followers.dart';
import 'package:mastodon/src/model/feature_approval.dart';
import 'package:mastodon/src/model/featured_tag.dart';
import 'package:mastodon/src/model/field.dart';
import 'package:mastodon/src/model/filter.dart';
import 'package:mastodon/src/model/filter_keyword.dart';
import 'package:mastodon/src/model/filter_result.dart';
import 'package:mastodon/src/model/filter_status.dart';
import 'package:mastodon/src/model/get_instance_activity200_response_inner.dart';
import 'package:mastodon/src/model/grouped_notifications_results.dart';
import 'package:mastodon/src/model/identity_proof.dart';
import 'package:mastodon/src/model/instance.dart';
import 'package:mastodon/src/model/instance_api_versions.dart';
import 'package:mastodon/src/model/instance_configuration.dart';
import 'package:mastodon/src/model/instance_configuration_accounts.dart';
import 'package:mastodon/src/model/instance_configuration_media_attachments.dart';
import 'package:mastodon/src/model/instance_configuration_polls.dart';
import 'package:mastodon/src/model/instance_configuration_statuses.dart';
import 'package:mastodon/src/model/instance_configuration_timelines_access.dart';
import 'package:mastodon/src/model/instance_configuration_timelines_access_hashtag_feeds.dart';
import 'package:mastodon/src/model/instance_configuration_timelines_access_live_feeds.dart';
import 'package:mastodon/src/model/instance_configuration_timelines_access_trending_link_feeds.dart';
import 'package:mastodon/src/model/instance_configuration_translation.dart';
import 'package:mastodon/src/model/instance_configuration_urls.dart';
import 'package:mastodon/src/model/instance_configuration_vapid.dart';
import 'package:mastodon/src/model/instance_contact.dart';
import 'package:mastodon/src/model/instance_icon.dart';
import 'package:mastodon/src/model/instance_registrations.dart';
import 'package:mastodon/src/model/instance_thumbnail.dart';
import 'package:mastodon/src/model/instance_thumbnail_versions.dart';
import 'package:mastodon/src/model/instance_usage.dart';
import 'package:mastodon/src/model/instance_usage_users.dart';
import 'package:mastodon/src/model/marker.dart';
import 'package:mastodon/src/model/media_attachment.dart';
import 'package:mastodon/src/model/media_attachment_meta.dart';
import 'package:mastodon/src/model/media_attachment_meta_focus.dart';
import 'package:mastodon/src/model/media_status.dart';
import 'package:mastodon/src/model/merged_response.dart';
import 'package:mastodon/src/model/meta_details.dart';
import 'package:mastodon/src/model/model_list.dart';
import 'package:mastodon/src/model/muted_account.dart';
import 'package:mastodon/src/model/notification.dart';
import 'package:mastodon/src/model/notification_fallback.dart';
import 'package:mastodon/src/model/notification_group.dart';
import 'package:mastodon/src/model/notification_policy.dart';
import 'package:mastodon/src/model/notification_policy_summary.dart';
import 'package:mastodon/src/model/notification_request.dart';
import 'package:mastodon/src/model/o_embed_response.dart';
import 'package:mastodon/src/model/partial_account_with_avatar.dart';
import 'package:mastodon/src/model/patch_account_update_credentials_request.dart';
import 'package:mastodon/src/model/patch_account_update_credentials_request_fields_attributes_value.dart';
import 'package:mastodon/src/model/patch_account_update_credentials_request_source.dart';
import 'package:mastodon/src/model/patch_profile_request.dart';
import 'package:mastodon/src/model/poll.dart';
import 'package:mastodon/src/model/poll_option.dart';
import 'package:mastodon/src/model/poll_status.dart';
import 'package:mastodon/src/model/post_account_follow_request.dart';
import 'package:mastodon/src/model/post_account_mute_request.dart';
import 'package:mastodon/src/model/post_account_note_request.dart';
import 'package:mastodon/src/model/post_collection_items_request.dart';
import 'package:mastodon/src/model/post_filter_keywords_v2_request.dart';
import 'package:mastodon/src/model/post_filter_statuses_v2_request.dart';
import 'package:mastodon/src/model/post_list_accounts_request.dart';
import 'package:mastodon/src/model/post_oauth_revoke_request.dart';
import 'package:mastodon/src/model/post_oauth_token_request.dart';
import 'package:mastodon/src/model/post_poll_votes_request.dart';
import 'package:mastodon/src/model/post_status_reblog_request.dart';
import 'package:mastodon/src/model/post_status_translate_request.dart';
import 'package:mastodon/src/model/preferences.dart';
import 'package:mastodon/src/model/preview_card.dart';
import 'package:mastodon/src/model/preview_card_author.dart';
import 'package:mastodon/src/model/privacy_policy.dart';
import 'package:mastodon/src/model/profile.dart';
import 'package:mastodon/src/model/put_push_subscription_request.dart';
import 'package:mastodon/src/model/put_push_subscription_request_data.dart';
import 'package:mastodon/src/model/put_push_subscription_request_data_alerts.dart';
import 'package:mastodon/src/model/quote.dart';
import 'package:mastodon/src/model/quote_approval.dart';
import 'package:mastodon/src/model/reaction.dart';
import 'package:mastodon/src/model/relationship.dart';
import 'package:mastodon/src/model/relationship_severance_event.dart';
import 'package:mastodon/src/model/report.dart';
import 'package:mastodon/src/model/role.dart';
import 'package:mastodon/src/model/rule.dart';
import 'package:mastodon/src/model/scheduled_status.dart';
import 'package:mastodon/src/model/scheduled_status_params.dart';
import 'package:mastodon/src/model/scheduled_status_params_poll.dart';
import 'package:mastodon/src/model/search.dart';
import 'package:mastodon/src/model/shallow_quote.dart';
import 'package:mastodon/src/model/shallow_tag.dart';
import 'package:mastodon/src/model/status.dart';
import 'package:mastodon/src/model/status_application.dart';
import 'package:mastodon/src/model/status_edit.dart';
import 'package:mastodon/src/model/status_edit_poll.dart';
import 'package:mastodon/src/model/status_edit_poll_options_inner.dart';
import 'package:mastodon/src/model/status_mention.dart';
import 'package:mastodon/src/model/status_quote.dart';
import 'package:mastodon/src/model/status_source.dart';
import 'package:mastodon/src/model/status_tag.dart';
import 'package:mastodon/src/model/suggestion.dart';
import 'package:mastodon/src/model/tag.dart';
import 'package:mastodon/src/model/tag_history.dart';
import 'package:mastodon/src/model/terms_of_service.dart';
import 'package:mastodon/src/model/text_status.dart';
import 'package:mastodon/src/model/token.dart';
import 'package:mastodon/src/model/translation.dart';
import 'package:mastodon/src/model/translation_attachment.dart';
import 'package:mastodon/src/model/translation_poll.dart';
import 'package:mastodon/src/model/translation_poll_option.dart';
import 'package:mastodon/src/model/trends_link.dart';
import 'package:mastodon/src/model/trends_link_history_inner.dart';
import 'package:mastodon/src/model/update_collection_request.dart';
import 'package:mastodon/src/model/update_filter_request.dart';
import 'package:mastodon/src/model/update_filter_v2_request.dart';
import 'package:mastodon/src/model/update_filter_v2_request_keywords_attributes_inner.dart';
import 'package:mastodon/src/model/update_scheduled_status_request.dart';
import 'package:mastodon/src/model/update_status_interaction_policy_request.dart';
import 'package:mastodon/src/model/update_status_request.dart';
import 'package:mastodon/src/model/update_status_request_poll.dart';
import 'package:mastodon/src/model/v1_filter.dart';
import 'package:mastodon/src/model/v1_instance.dart';
import 'package:mastodon/src/model/v1_instance_configuration.dart';
import 'package:mastodon/src/model/v1_instance_configuration_accounts.dart';
import 'package:mastodon/src/model/v1_instance_configuration_media_attachments.dart';
import 'package:mastodon/src/model/v1_instance_stats.dart';
import 'package:mastodon/src/model/v1_instance_urls.dart';
import 'package:mastodon/src/model/v1_notification_policy.dart';
import 'package:mastodon/src/model/validation_error.dart';
import 'package:mastodon/src/model/validation_error_details_value_inner.dart';
import 'package:mastodon/src/model/web_push_subscription.dart';
import 'package:mastodon/src/model/web_push_subscription_alerts.dart';
import 'package:mastodon/src/model/wrapped_annual_reports.dart';
import 'package:mastodon/src/model/wrapped_collection.dart';
import 'package:mastodon/src/model/wrapped_collection_item.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ReturnType deserialize<ReturnType, BaseType>(
  dynamic value,
  String targetType, {
  bool growable = true,
}) {
  switch (targetType) {
    case 'String':
      return '$value' as ReturnType;
    case 'int':
      return (value is int ? value : int.parse('$value')) as ReturnType;
    case 'bool':
      if (value is bool) {
        return value as ReturnType;
      }
      final valueString = '$value'.toLowerCase();
      return (valueString == 'true' || valueString == '1') as ReturnType;
    case 'double':
      return (value is double ? value : double.parse('$value')) as ReturnType;
    case 'Account':
      return Account.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AccountRole':
      return AccountRole.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AccountWarning':
      return AccountWarning.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AccountWarningActionEnum':
    case 'AdminAccount':
      return AdminAccount.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AdminCanonicalEmailBlock':
      return AdminCanonicalEmailBlock.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AdminCohort':
      return AdminCohort.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AdminCohortFrequencyEnum':
    case 'AdminDimension':
      return AdminDimension.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AdminDimensionData':
      return AdminDimensionData.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AdminDomainAllow':
      return AdminDomainAllow.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AdminDomainBlock':
      return AdminDomainBlock.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AdminDomainBlockSeverityEnum':
    case 'AdminEmailDomainBlock':
      return AdminEmailDomainBlock.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AdminEmailDomainBlockHistory':
      return AdminEmailDomainBlockHistory.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'AdminIp':
      return AdminIp.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AdminIpBlock':
      return AdminIpBlock.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AdminIpBlockSeverityEnum':
    case 'AdminMeasure':
      return AdminMeasure.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AdminMeasureData':
      return AdminMeasureData.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AdminReport':
      return AdminReport.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AdminTag':
      return AdminTag.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Announcement':
      return Announcement.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AnnouncementAccount':
      return AnnouncementAccount.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AnnouncementStatus':
      return AnnouncementStatus.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AnnualReport':
      return AnnualReport.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AnnualReportData':
      return AnnualReportData.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Appeal':
      return Appeal.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AppealStateEnum':
    case 'Application':
      return Application.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AsyncRefresh':
      return AsyncRefresh.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AsyncRefreshResponse':
      return AsyncRefreshResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AsyncRefreshStatusEnum':
    case 'BaseStatus':
      return BaseStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'CohortData':
      return CohortData.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Collection':
      return Collection.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'CollectionItem':
      return CollectionItem.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CollectionItemStateEnum':
    case 'CollectionWithAccounts':
      return CollectionWithAccounts.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Collections':
      return Collections.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Context':
      return Context.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Conversation':
      return Conversation.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'CountResponse':
      return CountResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateAccountRequest':
      return CreateAccountRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateAppRequest':
      return CreateAppRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateCollectionRequest':
      return CreateCollectionRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateDomainBlockRequest':
      return CreateDomainBlockRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateEmailConfirmationsRequest':
      return CreateEmailConfirmationsRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreateFeaturedTagRequest':
      return CreateFeaturedTagRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateFilterRequest':
      return CreateFilterRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateFilterV2Request':
      return CreateFilterV2Request.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateFilterV2RequestKeywordsAttributesInner':
      return CreateFilterV2RequestKeywordsAttributesInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreateListRequest':
      return CreateListRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateMarkerRequest':
      return CreateMarkerRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateMarkerRequestHome':
      return CreateMarkerRequestHome.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateMarkerRequestNotifications':
      return CreateMarkerRequestNotifications.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreatePushSubscriptionRequest':
      return CreatePushSubscriptionRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreatePushSubscriptionRequestData':
      return CreatePushSubscriptionRequestData.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreatePushSubscriptionRequestDataAlerts':
      return CreatePushSubscriptionRequestDataAlerts.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreatePushSubscriptionRequestSubscription':
      return CreatePushSubscriptionRequestSubscription.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreatePushSubscriptionRequestSubscriptionKeys':
      return CreatePushSubscriptionRequestSubscriptionKeys.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'CreateReportRequest':
      return CreateReportRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateStatus200Response':
      return CreateStatus200Response.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateStatusRequest':
      return CreateStatusRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CredentialAccount':
      return CredentialAccount.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CredentialAccountSource':
      return CredentialAccountSource.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CredentialApplication':
      return CredentialApplication.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CustomEmoji':
      return CustomEmoji.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'CustomError422':
      return CustomError422.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CustomError422Error':
      return CustomError422Error.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CustomError422ErrorDetails':
      return CustomError422ErrorDetails.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CustomError422ErrorDetailsNameInner':
      return CustomError422ErrorDetailsNameInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'DeleteDomainBlocksRequest':
      return DeleteDomainBlocksRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'DeleteListAccountsRequest':
      return DeleteListAccountsRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'DiscoverOauthServerConfigurationResponse':
      return DiscoverOauthServerConfigurationResponse.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'DomainBlock':
      return DomainBlock.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'DomainBlockSeverityEnum':
    case 'Error':
      return Error.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ExtendedDescription':
      return ExtendedDescription.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'FamiliarFollowers':
      return FamiliarFollowers.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'FeatureApproval':
      return FeatureApproval.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'FeatureApprovalAutomaticEnum':
    case 'FeatureApprovalCurrentUserEnum':
    case 'FeaturedTag':
      return FeaturedTag.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Field':
      return Field.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Filter':
      return Filter.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'FilterContextEnum':
    case 'FilterFilterActionEnum':
    case 'FilterKeyword':
      return FilterKeyword.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'FilterResult':
      return FilterResult.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'FilterStatus':
      return FilterStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'GetInstanceActivity200ResponseInner':
      return GetInstanceActivity200ResponseInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'GroupedNotificationsResults':
      return GroupedNotificationsResults.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'IdentityProof':
      return IdentityProof.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Instance':
      return Instance.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'InstanceApiVersions':
      return InstanceApiVersions.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceConfiguration':
      return InstanceConfiguration.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceConfigurationAccounts':
      return InstanceConfigurationAccounts.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationMediaAttachments':
      return InstanceConfigurationMediaAttachments.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationPolls':
      return InstanceConfigurationPolls.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceConfigurationStatuses':
      return InstanceConfigurationStatuses.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationTimelinesAccess':
      return InstanceConfigurationTimelinesAccess.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationTimelinesAccessHashtagFeeds':
      return InstanceConfigurationTimelinesAccessHashtagFeeds.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationTimelinesAccessLiveFeeds':
      return InstanceConfigurationTimelinesAccessLiveFeeds.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationTimelinesAccessTrendingLinkFeeds':
      return InstanceConfigurationTimelinesAccessTrendingLinkFeeds.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationTranslation':
      return InstanceConfigurationTranslation.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'InstanceConfigurationUrls':
      return InstanceConfigurationUrls.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceConfigurationVapid':
      return InstanceConfigurationVapid.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceContact':
      return InstanceContact.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceIcon':
      return InstanceIcon.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'InstanceRegistrations':
      return InstanceRegistrations.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceThumbnail':
      return InstanceThumbnail.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceThumbnailVersions':
      return InstanceThumbnailVersions.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceUsage':
      return InstanceUsage.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'InstanceUsageUsers':
      return InstanceUsageUsers.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ListRepliesPolicyEnum':
    case 'Marker':
      return Marker.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'MediaAttachment':
      return MediaAttachment.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'MediaAttachmentMeta':
      return MediaAttachmentMeta.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'MediaAttachmentMetaFocus':
      return MediaAttachmentMetaFocus.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'MediaAttachmentTypeEnum':
    case 'MediaStatus':
      return MediaStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'MergedResponse':
      return MergedResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'MetaDetails':
      return MetaDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ModelList':
      return ModelList.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'MutedAccount':
      return MutedAccount.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Notification':
      return Notification.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'NotificationFallback':
      return NotificationFallback.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'NotificationGroup':
      return NotificationGroup.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'NotificationPolicy':
      return NotificationPolicy.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'NotificationPolicySummary':
      return NotificationPolicySummary.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'NotificationRequest':
      return NotificationRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'NotificationTypeEnum':
    case 'OAuthScope':
    case 'OEmbedResponse':
      return OEmbedResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PartialAccountWithAvatar':
      return PartialAccountWithAvatar.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PatchAccountUpdateCredentialsRequest':
      return PatchAccountUpdateCredentialsRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'PatchAccountUpdateCredentialsRequestFieldsAttributesValue':
      return PatchAccountUpdateCredentialsRequestFieldsAttributesValue.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'PatchAccountUpdateCredentialsRequestSource':
      return PatchAccountUpdateCredentialsRequestSource.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'PatchProfileRequest':
      return PatchProfileRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Poll':
      return Poll.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PollOption':
      return PollOption.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PollStatus':
      return PollStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PostAccountFollowRequest':
      return PostAccountFollowRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostAccountMuteRequest':
      return PostAccountMuteRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostAccountNoteRequest':
      return PostAccountNoteRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostCollectionItemsRequest':
      return PostCollectionItemsRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostFilterKeywordsV2Request':
      return PostFilterKeywordsV2Request.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostFilterStatusesV2Request':
      return PostFilterStatusesV2Request.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostListAccountsRequest':
      return PostListAccountsRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostOauthRevokeRequest':
      return PostOauthRevokeRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostOauthTokenRequest':
      return PostOauthTokenRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostPollVotesRequest':
      return PostPollVotesRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostStatusReblogRequest':
      return PostStatusReblogRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PostStatusTranslateRequest':
      return PostStatusTranslateRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Preferences':
      return Preferences.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PreferencesReadingExpandMediaEnum':
    case 'PreviewCard':
      return PreviewCard.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PreviewCardAuthor':
      return PreviewCardAuthor.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PrivacyPolicy':
      return PrivacyPolicy.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Profile':
      return Profile.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PutPushSubscriptionRequest':
      return PutPushSubscriptionRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PutPushSubscriptionRequestData':
      return PutPushSubscriptionRequestData.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'PutPushSubscriptionRequestDataAlerts':
      return PutPushSubscriptionRequestDataAlerts.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'Quote':
      return Quote.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'QuoteApproval':
      return QuoteApproval.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'QuoteApprovalAutomaticEnum':
    case 'QuoteApprovalCurrentUserEnum':
    case 'QuoteStateEnum':
    case 'Reaction':
      return Reaction.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Relationship':
      return Relationship.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'RelationshipSeveranceEvent':
      return RelationshipSeveranceEvent.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'RelationshipSeveranceEventTypeEnum':
    case 'Report':
      return Report.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ReportCategoryEnum':
    case 'Role':
      return Role.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Rule':
      return Rule.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ScheduledStatus':
      return ScheduledStatus.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ScheduledStatusParams':
      return ScheduledStatusParams.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ScheduledStatusParamsPoll':
      return ScheduledStatusParamsPoll.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ScheduledStatusParamsQuoteApprovalPolicyEnum':
    case 'Search':
      return Search.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ShallowQuote':
      return ShallowQuote.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ShallowTag':
      return ShallowTag.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Status':
      return Status.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'StatusApplication':
      return StatusApplication.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'StatusEdit':
      return StatusEdit.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'StatusEditPoll':
      return StatusEditPoll.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'StatusEditPollOptionsInner':
      return StatusEditPollOptionsInner.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'StatusMention':
      return StatusMention.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'StatusQuote':
      return StatusQuote.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'StatusSource':
      return StatusSource.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'StatusTag':
      return StatusTag.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'StatusVisibilityEnum':
    case 'Suggestion':
      return Suggestion.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'SuggestionSourcesEnum':
    case 'Tag':
      return Tag.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TagHistory':
      return TagHistory.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TermsOfService':
      return TermsOfService.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TextStatus':
      return TextStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Token':
      return Token.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Translation':
      return Translation.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TranslationAttachment':
      return TranslationAttachment.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TranslationPoll':
      return TranslationPoll.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TranslationPollOption':
      return TranslationPollOption.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TrendsLink':
      return TrendsLink.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TrendsLinkHistoryInner':
      return TrendsLinkHistoryInner.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TrendsLinkTypeEnum':
    case 'UpdateCollectionRequest':
      return UpdateCollectionRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateFilterRequest':
      return UpdateFilterRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateFilterV2Request':
      return UpdateFilterV2Request.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateFilterV2RequestKeywordsAttributesInner':
      return UpdateFilterV2RequestKeywordsAttributesInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'UpdateScheduledStatusRequest':
      return UpdateScheduledStatusRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'UpdateStatusInteractionPolicyRequest':
      return UpdateStatusInteractionPolicyRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'UpdateStatusRequest':
      return UpdateStatusRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateStatusRequestPoll':
      return UpdateStatusRequestPoll.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'V1Filter':
      return V1Filter.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'V1Instance':
      return V1Instance.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'V1InstanceConfiguration':
      return V1InstanceConfiguration.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'V1InstanceConfigurationAccounts':
      return V1InstanceConfigurationAccounts.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'V1InstanceConfigurationMediaAttachments':
      return V1InstanceConfigurationMediaAttachments.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'V1InstanceStats':
      return V1InstanceStats.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'V1InstanceUrls':
      return V1InstanceUrls.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'V1NotificationPolicy':
      return V1NotificationPolicy.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ValidationError':
      return ValidationError.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ValidationErrorDetailsValueInner':
      return ValidationErrorDetailsValueInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'WebPushSubscription':
      return WebPushSubscription.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'WebPushSubscriptionAlerts':
      return WebPushSubscriptionAlerts.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'WrappedAnnualReports':
      return WrappedAnnualReports.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'WrappedCollection':
      return WrappedCollection.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'WrappedCollectionItem':
      return WrappedCollectionItem.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    default:
      RegExpMatch? match;

      if (value is List && (match = _regList.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toList(growable: growable)
            as ReturnType;
      }
      if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toSet()
            as ReturnType;
      }
      if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
        targetType = match![1]!.trim(); // ignore: parameter_assignments
        return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map(
                (dynamic v) => deserialize<BaseType, BaseType>(
                  v,
                  targetType,
                  growable: growable,
                ),
              ),
            )
            as ReturnType;
      }
      break;
  }
  throw Exception('Cannot deserialize');
}
