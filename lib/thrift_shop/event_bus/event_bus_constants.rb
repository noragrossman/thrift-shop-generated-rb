#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'thrift_shop/event_bus/event_bus_types'

module ThriftShop
  module EventBus
    MESSAGE_KEY = {
      %q"causes_account_linked" => [
        %q"entity_uuid",
      ],
      %q"facebook_account_linked" => [
        %q"entity_uuid",
      ],
      %q"entity_changed" => [
        %q"entity_uuid",
      ],
      %q"action_taken" => [
      ],
      %q"action_requested" => [
      ],
      %q"petition_signed" => [
        %q"entity_uuid",
        %q"petition_uid",
      ],
      %q"petition_launched" => [
        %q"petition_uid",
      ],
      %q"petition_grades_published" => [
        %q"petition_uid",
      ],
      %q"petition_grading_notifications_triggered" => [
        %q"petition_uid",
      ],
      %q"campaign_created" => [
        %q"campaign_uid",
      ],
      %q"campaign_deleted" => [
        %q"campaign_uid",
      ],
      %q"campaign_updated_topics" => [
        %q"campaign_uid",
      ],
      %q"campaign_launched" => [
        %q"campaign_uid",
      ],
      %q"campaign_update_created" => [
      ],
      %q"campaign_poll_triggered" => [
        %q"campaign_poll_uid",
      ],
      %q"campaign_supporter_changed" => [
        %q"entity_uuid",
        %q"campaign_uid",
      ],
      %q"content_topic_changed" => [
        %q"topic_uid",
        %q"content_uid",
        %q"content_type",
        %q"change_type",
      ],
      %q"invitation_created" => [
        %q"invitation_uid",
      ],
      %q"invitation_accepted" => [
        %q"invitation_uid",
      ],
      %q"invitation_deactivated" => [
        %q"invitation_uid",
      ],
      %q"invitation_conversion_changed" => [
        %q"invitation_conversion_uid",
      ],
      %q"position_changed" => [
        %q"position_uid",
      ],
      %q"position_response_created" => [
        %q"position_uid",
        %q"entity_uuid",
      ],
      %q"position_response_deleted" => [
        %q"position_uid",
        %q"entity_uuid",
      ],
      %q"position_response_updated" => [
        %q"position_uid",
        %q"entity_uuid",
      ],
      %q"profile_district_changed" => [
        %q"entity_uuid",
        %q"district_uid",
        %q"change_type",
      ],
      %q"profile_created" => [
        %q"entity_uuid",
      ],
      %q"profile_updated" => [
        %q"entity_uuid",
      ],
      %q"profile_deleted" => [
        %q"entity_uuid",
      ],
      %q"profile_changed" => [
        %q"entity_uuid",
      ],
      %q"group_membership_changed" => [
        %q"uid",
      ],
      %q"group_petition_adoption_changed" => [
        %q"group_petition_adoption_uid",
      ],
      %q"contact_async_job" => [
      ],
      %q"alignment_async_job" => [
      ],
      %q"share_changed" => [
        %q"share_uid",
      ],
      %q"share_conversion_changed" => [
        %q"share_conversion_uid",
      ],
    }

  end
end
