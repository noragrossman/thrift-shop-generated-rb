#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'thrift_shop/shared/shared_types'


module ThriftShop
  module EventBus
    module ActionType
      PETITION_SIGNATURE = 0
      VALUE_MAP = {0 => "PETITION_SIGNATURE"}
      VALID_VALUES = Set.new([PETITION_SIGNATURE]).freeze
    end

    class ActionTaken
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ACTION_UID = 1
      ACTION_TYPE = 3
      ENTITY_UUID = 4

      FIELDS = {
        ACTION_UID => {:type => ::Thrift::Types::STRING, :name => 'action_uid'},
        ACTION_TYPE => {:type => ::Thrift::Types::I32, :name => 'action_type', :enum_class => ::ThriftShop::EventBus::ActionType},
        ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'entity_uuid'}
      }

      def struct_fields; FIELDS; end

      def validate
        unless @action_type.nil? || ::ThriftShop::EventBus::ActionType::VALID_VALUES.include?(@action_type)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field action_type!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ActionRequested
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ACTION_REQUEST_UID = 1
      REQUESTER_ENTITY_UUID = 5
      TARGET_ENTITY_UUID = 6
      ACTION_TYPE = 4

      FIELDS = {
        ACTION_REQUEST_UID => {:type => ::Thrift::Types::STRING, :name => 'action_request_uid'},
        REQUESTER_ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'requester_entity_uuid'},
        TARGET_ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'target_entity_uuid'},
        ACTION_TYPE => {:type => ::Thrift::Types::I32, :name => 'action_type', :enum_class => ::ThriftShop::EventBus::ActionType}
      }

      def struct_fields; FIELDS; end

      def validate
        unless @action_type.nil? || ::ThriftShop::EventBus::ActionType::VALID_VALUES.include?(@action_type)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field action_type!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class PetitionLaunched
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PETITION_UID = 1
      PETITION_TITLE = 2
      DESCRIPTION = 3

      FIELDS = {
        PETITION_UID => {:type => ::Thrift::Types::STRING, :name => 'petition_uid'},
        PETITION_TITLE => {:type => ::Thrift::Types::STRING, :name => 'petition_title'},
        DESCRIPTION => {:type => ::Thrift::Types::STRING, :name => 'description'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class PetitionSigned
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PETITION_UID = 1
      ENTITY_UUID = 2

      FIELDS = {
        PETITION_UID => {:type => ::Thrift::Types::STRING, :name => 'petition_uid'},
        ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'entity_uuid'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class PetitionGradesPublished
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PETITION_UID = 1

      FIELDS = {
        PETITION_UID => {:type => ::Thrift::Types::STRING, :name => 'petition_uid'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class PetitionGradingNotificationsTriggered
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PETITION_UID = 1

      FIELDS = {
        PETITION_UID => {:type => ::Thrift::Types::STRING, :name => 'petition_uid'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
