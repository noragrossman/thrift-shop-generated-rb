#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'thrift_shop/shared/shared_types'


module ThriftShop
  module Share
    module ShareType
      CAMPAIGN_UPDATE = 1
      TOPIC_COMPARE = 2
      JOIN_GROUP = 3
      SIGN_PETITION = 4
      REP_PETITION = 5
      REP_PETITION_CALL = 6
      CAMPAIGN_POLL = 7
      VALUE_MAP = {1 => "CAMPAIGN_UPDATE", 2 => "TOPIC_COMPARE", 3 => "JOIN_GROUP", 4 => "SIGN_PETITION", 5 => "REP_PETITION", 6 => "REP_PETITION_CALL", 7 => "CAMPAIGN_POLL"}
      VALID_VALUES = Set.new([CAMPAIGN_UPDATE, TOPIC_COMPARE, JOIN_GROUP, SIGN_PETITION, REP_PETITION, REP_PETITION_CALL, CAMPAIGN_POLL]).freeze
    end

    module Channel
      UNKNOWN = 1
      COPY_LINK = 2
      FACEBOOK = 3
      TWITTER = 4
      SMS = 5
      PHONE = 6
      FACEBOOK_MESSENGER = 7
      VALUE_MAP = {1 => "UNKNOWN", 2 => "COPY_LINK", 3 => "FACEBOOK", 4 => "TWITTER", 5 => "SMS", 6 => "PHONE", 7 => "FACEBOOK_MESSENGER"}
      VALID_VALUES = Set.new([UNKNOWN, COPY_LINK, FACEBOOK, TWITTER, SMS, PHONE, FACEBOOK_MESSENGER]).freeze
    end

    class ShareTargetUid < ::Thrift::Union
      include ::Thrift::Struct_Union
      class << self
        def petition_uid(val)
          ShareTargetUid.new(:petition_uid, val)
        end

        def campaign_update_uid(val)
          ShareTargetUid.new(:campaign_update_uid, val)
        end

        def topic_uid(val)
          ShareTargetUid.new(:topic_uid, val)
        end

        def group_uid(val)
          ShareTargetUid.new(:group_uid, val)
        end

        def petition_target_uid(val)
          ShareTargetUid.new(:petition_target_uid, val)
        end

        def campaign_poll_uid(val)
          ShareTargetUid.new(:campaign_poll_uid, val)
        end
      end

      PETITION_UID = 1
      CAMPAIGN_UPDATE_UID = 2
      TOPIC_UID = 3
      GROUP_UID = 4
      PETITION_TARGET_UID = 5
      CAMPAIGN_POLL_UID = 6

      FIELDS = {
        PETITION_UID => {:type => ::Thrift::Types::STRING, :name => 'petition_uid', :optional => true},
        CAMPAIGN_UPDATE_UID => {:type => ::Thrift::Types::STRING, :name => 'campaign_update_uid', :optional => true},
        TOPIC_UID => {:type => ::Thrift::Types::STRING, :name => 'topic_uid', :optional => true},
        GROUP_UID => {:type => ::Thrift::Types::STRING, :name => 'group_uid', :optional => true},
        PETITION_TARGET_UID => {:type => ::Thrift::Types::STRING, :name => 'petition_target_uid', :optional => true},
        CAMPAIGN_POLL_UID => {:type => ::Thrift::Types::STRING, :name => 'campaign_poll_uid', :optional => true}
      }

      def struct_fields; FIELDS; end

      def validate
        raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
      end

      ::Thrift::Union.generate_accessors self
    end

    class Share
      include ::Thrift::Struct, ::Thrift::Struct_Union
      UID = 1
      CHANNEL = 2
      SHARE_TYPE = 3
      SHARE_TARGET_UID = 4
      CREATED_AT = 5
      UPDATED_AT = 6
      CLICK_COUNT = 7
      SHARER_ENTITY_UUID = 8

      FIELDS = {
        UID => {:type => ::Thrift::Types::STRING, :name => 'uid'},
        CHANNEL => {:type => ::Thrift::Types::I32, :name => 'channel', :enum_class => ::ThriftShop::Share::Channel},
        SHARE_TYPE => {:type => ::Thrift::Types::I32, :name => 'share_type', :enum_class => ::ThriftShop::Share::ShareType},
        SHARE_TARGET_UID => {:type => ::Thrift::Types::STRUCT, :name => 'share_target_uid', :class => ::ThriftShop::Share::ShareTargetUid, :optional => true},
        CREATED_AT => {:type => ::Thrift::Types::STRING, :name => 'created_at', :optional => true},
        UPDATED_AT => {:type => ::Thrift::Types::STRING, :name => 'updated_at', :optional => true},
        CLICK_COUNT => {:type => ::Thrift::Types::I32, :name => 'click_count', :optional => true},
        SHARER_ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'sharer_entity_uuid'}
      }

      def struct_fields; FIELDS; end

      def validate
        unless @channel.nil? || ::ThriftShop::Share::Channel::VALID_VALUES.include?(@channel)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field channel!')
        end
        unless @share_type.nil? || ::ThriftShop::Share::ShareType::VALID_VALUES.include?(@share_type)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field share_type!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ShareConversion
      include ::Thrift::Struct, ::Thrift::Struct_Union
      UID = 1
      SHARE_UID = 2
      CONVERTER_ENTITY_UUID = 3
      CREATED_AT = 4
      UPDATED_AT = 5

      FIELDS = {
        UID => {:type => ::Thrift::Types::STRING, :name => 'uid'},
        SHARE_UID => {:type => ::Thrift::Types::STRING, :name => 'share_uid'},
        CONVERTER_ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'converter_entity_uuid'},
        CREATED_AT => {:type => ::Thrift::Types::STRING, :name => 'created_at'},
        UPDATED_AT => {:type => ::Thrift::Types::STRING, :name => 'updated_at'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end