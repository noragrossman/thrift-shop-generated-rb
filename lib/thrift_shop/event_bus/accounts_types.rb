#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'thrift_shop/shared/shared_types'


module ThriftShop
  module EventBus
    class FacebookAccountLinked
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ENTITY_UUID = 1
      ACCESS_TOKEN = 2
      FACEBOOK_UID = 3

      FIELDS = {
        ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'entity_uuid'},
        ACCESS_TOKEN => {:type => ::Thrift::Types::STRING, :name => 'access_token'},
        FACEBOOK_UID => {:type => ::Thrift::Types::STRING, :name => 'facebook_uid'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class CausesAccountLinked
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ENTITY_UUID = 1
      CAUSES_ID = 2

      FIELDS = {
        ENTITY_UUID => {:type => ::Thrift::Types::STRING, :name => 'entity_uuid'},
        CAUSES_ID => {:type => ::Thrift::Types::I32, :name => 'causes_id'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
