#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'thrift_shop/shared/shared_types'


module ThriftShop
  module Group
    class GroupPetitionAdoption
      include ::Thrift::Struct, ::Thrift::Struct_Union
      UID = 1
      GROUP_UID = 2
      PETITION_UID = 3
      PETITION_SIGNATURE_GOAL = 4

      FIELDS = {
        UID => {:type => ::Thrift::Types::STRING, :name => 'uid'},
        GROUP_UID => {:type => ::Thrift::Types::STRING, :name => 'group_uid'},
        PETITION_UID => {:type => ::Thrift::Types::STRING, :name => 'petition_uid'},
        PETITION_SIGNATURE_GOAL => {:type => ::Thrift::Types::I32, :name => 'petition_signature_goal'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
