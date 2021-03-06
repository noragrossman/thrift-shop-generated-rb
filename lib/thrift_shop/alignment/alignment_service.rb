#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'thrift_shop/alignment/alignment_types'

module ThriftShop
  module Alignment
    module AlignmentService
      class Client
        include ::Thrift::Client

        def delete_position_response(headers, request)
          send_delete_position_response(headers, request)
          recv_delete_position_response()
        end

        def send_delete_position_response(headers, request)
          send_message('delete_position_response', Delete_position_response_args, :headers => headers, :request => request)
        end

        def recv_delete_position_response()
          result = receive_message(Delete_position_response_result)
          raise result.argument_exception unless result.argument_exception.nil?
          raise result.unauthorized_exception unless result.unauthorized_exception.nil?
          return
        end

        def get_population_alignments(headers, request)
          send_get_population_alignments(headers, request)
          return recv_get_population_alignments()
        end

        def send_get_population_alignments(headers, request)
          send_message('get_population_alignments', Get_population_alignments_args, :headers => headers, :request => request)
        end

        def recv_get_population_alignments()
          result = receive_message(Get_population_alignments_result)
          return result.success unless result.success.nil?
          raise result.argument_exception unless result.argument_exception.nil?
          raise result.unauthorized_exception unless result.unauthorized_exception.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_population_alignments failed: unknown result')
        end

        def get_user_alignments(headers, request)
          send_get_user_alignments(headers, request)
          return recv_get_user_alignments()
        end

        def send_get_user_alignments(headers, request)
          send_message('get_user_alignments', Get_user_alignments_args, :headers => headers, :request => request)
        end

        def recv_get_user_alignments()
          result = receive_message(Get_user_alignments_result)
          return result.success unless result.success.nil?
          raise result.argument_exception unless result.argument_exception.nil?
          raise result.unauthorized_exception unless result.unauthorized_exception.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_user_alignments failed: unknown result')
        end

        def get_population_alignments_for_topics(headers, request)
          send_get_population_alignments_for_topics(headers, request)
          return recv_get_population_alignments_for_topics()
        end

        def send_get_population_alignments_for_topics(headers, request)
          send_message('get_population_alignments_for_topics', Get_population_alignments_for_topics_args, :headers => headers, :request => request)
        end

        def recv_get_population_alignments_for_topics()
          result = receive_message(Get_population_alignments_for_topics_result)
          return result.success unless result.success.nil?
          raise result.argument_exception unless result.argument_exception.nil?
          raise result.unauthorized_exception unless result.unauthorized_exception.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_population_alignments_for_topics failed: unknown result')
        end

        def get_user_alignments_for_topics(headers, request)
          send_get_user_alignments_for_topics(headers, request)
          return recv_get_user_alignments_for_topics()
        end

        def send_get_user_alignments_for_topics(headers, request)
          send_message('get_user_alignments_for_topics', Get_user_alignments_for_topics_args, :headers => headers, :request => request)
        end

        def recv_get_user_alignments_for_topics()
          result = receive_message(Get_user_alignments_for_topics_result)
          return result.success unless result.success.nil?
          raise result.argument_exception unless result.argument_exception.nil?
          raise result.unauthorized_exception unless result.unauthorized_exception.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_user_alignments_for_topics failed: unknown result')
        end

        def receive_event_bus_message_parcel(headers, message_parcel)
          send_receive_event_bus_message_parcel(headers, message_parcel)
          recv_receive_event_bus_message_parcel()
        end

        def send_receive_event_bus_message_parcel(headers, message_parcel)
          send_message('receive_event_bus_message_parcel', Receive_event_bus_message_parcel_args, :headers => headers, :message_parcel => message_parcel)
        end

        def recv_receive_event_bus_message_parcel()
          result = receive_message(Receive_event_bus_message_parcel_result)
          return
        end

        def update_position_response(headers, request)
          send_update_position_response(headers, request)
          return recv_update_position_response()
        end

        def send_update_position_response(headers, request)
          send_message('update_position_response', Update_position_response_args, :headers => headers, :request => request)
        end

        def recv_update_position_response()
          result = receive_message(Update_position_response_result)
          return result.success unless result.success.nil?
          raise result.argument_exception unless result.argument_exception.nil?
          raise result.unauthorized_exception unless result.unauthorized_exception.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'update_position_response failed: unknown result')
        end

      end

      class Processor
        include ::Thrift::Processor

        def process_delete_position_response(seqid, iprot, oprot)
          args = read_args(iprot, Delete_position_response_args)
          result = Delete_position_response_result.new()
          begin
            @handler.delete_position_response(args.headers, args.request)
          rescue ::ThriftShop::Shared::ArgumentException => argument_exception
            result.argument_exception = argument_exception
          rescue ::ThriftShop::Shared::UnauthorizedException => unauthorized_exception
            result.unauthorized_exception = unauthorized_exception
          end
          write_result(result, oprot, 'delete_position_response', seqid)
        end

        def process_get_population_alignments(seqid, iprot, oprot)
          args = read_args(iprot, Get_population_alignments_args)
          result = Get_population_alignments_result.new()
          begin
            result.success = @handler.get_population_alignments(args.headers, args.request)
          rescue ::ThriftShop::Shared::ArgumentException => argument_exception
            result.argument_exception = argument_exception
          rescue ::ThriftShop::Shared::UnauthorizedException => unauthorized_exception
            result.unauthorized_exception = unauthorized_exception
          end
          write_result(result, oprot, 'get_population_alignments', seqid)
        end

        def process_get_user_alignments(seqid, iprot, oprot)
          args = read_args(iprot, Get_user_alignments_args)
          result = Get_user_alignments_result.new()
          begin
            result.success = @handler.get_user_alignments(args.headers, args.request)
          rescue ::ThriftShop::Shared::ArgumentException => argument_exception
            result.argument_exception = argument_exception
          rescue ::ThriftShop::Shared::UnauthorizedException => unauthorized_exception
            result.unauthorized_exception = unauthorized_exception
          end
          write_result(result, oprot, 'get_user_alignments', seqid)
        end

        def process_get_population_alignments_for_topics(seqid, iprot, oprot)
          args = read_args(iprot, Get_population_alignments_for_topics_args)
          result = Get_population_alignments_for_topics_result.new()
          begin
            result.success = @handler.get_population_alignments_for_topics(args.headers, args.request)
          rescue ::ThriftShop::Shared::ArgumentException => argument_exception
            result.argument_exception = argument_exception
          rescue ::ThriftShop::Shared::UnauthorizedException => unauthorized_exception
            result.unauthorized_exception = unauthorized_exception
          end
          write_result(result, oprot, 'get_population_alignments_for_topics', seqid)
        end

        def process_get_user_alignments_for_topics(seqid, iprot, oprot)
          args = read_args(iprot, Get_user_alignments_for_topics_args)
          result = Get_user_alignments_for_topics_result.new()
          begin
            result.success = @handler.get_user_alignments_for_topics(args.headers, args.request)
          rescue ::ThriftShop::Shared::ArgumentException => argument_exception
            result.argument_exception = argument_exception
          rescue ::ThriftShop::Shared::UnauthorizedException => unauthorized_exception
            result.unauthorized_exception = unauthorized_exception
          end
          write_result(result, oprot, 'get_user_alignments_for_topics', seqid)
        end

        def process_receive_event_bus_message_parcel(seqid, iprot, oprot)
          args = read_args(iprot, Receive_event_bus_message_parcel_args)
          result = Receive_event_bus_message_parcel_result.new()
          @handler.receive_event_bus_message_parcel(args.headers, args.message_parcel)
          write_result(result, oprot, 'receive_event_bus_message_parcel', seqid)
        end

        def process_update_position_response(seqid, iprot, oprot)
          args = read_args(iprot, Update_position_response_args)
          result = Update_position_response_result.new()
          begin
            result.success = @handler.update_position_response(args.headers, args.request)
          rescue ::ThriftShop::Shared::ArgumentException => argument_exception
            result.argument_exception = argument_exception
          rescue ::ThriftShop::Shared::UnauthorizedException => unauthorized_exception
            result.unauthorized_exception = unauthorized_exception
          end
          write_result(result, oprot, 'update_position_response', seqid)
        end

      end

      # HELPER FUNCTIONS AND STRUCTURES

      class Delete_position_response_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        HEADERS = 1
        REQUEST = 2

        FIELDS = {
          HEADERS => {:type => ::Thrift::Types::STRUCT, :name => 'headers', :class => ::ThriftShop::Shared::RequestHeaders},
          REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::ThriftShop::Alignment::DeletePositionResponseRequest}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Delete_position_response_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        ARGUMENT_EXCEPTION = 1
        UNAUTHORIZED_EXCEPTION = 2

        FIELDS = {
          ARGUMENT_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'argument_exception', :class => ::ThriftShop::Shared::ArgumentException},
          UNAUTHORIZED_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'unauthorized_exception', :class => ::ThriftShop::Shared::UnauthorizedException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_population_alignments_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        HEADERS = 1
        REQUEST = 2

        FIELDS = {
          HEADERS => {:type => ::Thrift::Types::STRUCT, :name => 'headers', :class => ::ThriftShop::Shared::RequestHeaders},
          REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::ThriftShop::Alignment::GetPopulationAlignmentsRequest}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_population_alignments_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        ARGUMENT_EXCEPTION = 1
        UNAUTHORIZED_EXCEPTION = 2

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::ThriftShop::Alignment::EntityAlignment}},
          ARGUMENT_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'argument_exception', :class => ::ThriftShop::Shared::ArgumentException},
          UNAUTHORIZED_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'unauthorized_exception', :class => ::ThriftShop::Shared::UnauthorizedException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_user_alignments_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        HEADERS = 1
        REQUEST = 2

        FIELDS = {
          HEADERS => {:type => ::Thrift::Types::STRUCT, :name => 'headers', :class => ::ThriftShop::Shared::RequestHeaders},
          REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::ThriftShop::Alignment::GetUserAlignmentsRequest}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_user_alignments_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        ARGUMENT_EXCEPTION = 1
        UNAUTHORIZED_EXCEPTION = 2

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::ThriftShop::Alignment::EntityAlignment}},
          ARGUMENT_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'argument_exception', :class => ::ThriftShop::Shared::ArgumentException},
          UNAUTHORIZED_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'unauthorized_exception', :class => ::ThriftShop::Shared::UnauthorizedException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_population_alignments_for_topics_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        HEADERS = 1
        REQUEST = 2

        FIELDS = {
          HEADERS => {:type => ::Thrift::Types::STRUCT, :name => 'headers', :class => ::ThriftShop::Shared::RequestHeaders},
          REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::ThriftShop::Alignment::GetPopulationAlignmentsForTopicsRequest}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_population_alignments_for_topics_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        ARGUMENT_EXCEPTION = 1
        UNAUTHORIZED_EXCEPTION = 2

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::ThriftShop::Alignment::EntityAlignment}},
          ARGUMENT_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'argument_exception', :class => ::ThriftShop::Shared::ArgumentException},
          UNAUTHORIZED_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'unauthorized_exception', :class => ::ThriftShop::Shared::UnauthorizedException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_user_alignments_for_topics_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        HEADERS = 1
        REQUEST = 2

        FIELDS = {
          HEADERS => {:type => ::Thrift::Types::STRUCT, :name => 'headers', :class => ::ThriftShop::Shared::RequestHeaders},
          REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::ThriftShop::Alignment::GetUserAlignmentsForTopicsRequest}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_user_alignments_for_topics_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        ARGUMENT_EXCEPTION = 1
        UNAUTHORIZED_EXCEPTION = 2

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::ThriftShop::Alignment::EntityAlignment}},
          ARGUMENT_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'argument_exception', :class => ::ThriftShop::Shared::ArgumentException},
          UNAUTHORIZED_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'unauthorized_exception', :class => ::ThriftShop::Shared::UnauthorizedException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Receive_event_bus_message_parcel_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        HEADERS = 1
        MESSAGE_PARCEL = 2

        FIELDS = {
          HEADERS => {:type => ::Thrift::Types::STRUCT, :name => 'headers', :class => ::ThriftShop::Shared::RequestHeaders},
          MESSAGE_PARCEL => {:type => ::Thrift::Types::STRUCT, :name => 'message_parcel', :class => ::ThriftShop::EventBus::MessageParcel}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Receive_event_bus_message_parcel_result
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Update_position_response_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        HEADERS = 1
        REQUEST = 2

        FIELDS = {
          HEADERS => {:type => ::Thrift::Types::STRUCT, :name => 'headers', :class => ::ThriftShop::Shared::RequestHeaders},
          REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::ThriftShop::Alignment::UpdatePositionResponseRequest}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Update_position_response_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        ARGUMENT_EXCEPTION = 1
        UNAUTHORIZED_EXCEPTION = 2

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::ThriftShop::Alignment::PositionUpdateAlignment},
          ARGUMENT_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'argument_exception', :class => ::ThriftShop::Shared::ArgumentException},
          UNAUTHORIZED_EXCEPTION => {:type => ::Thrift::Types::STRUCT, :name => 'unauthorized_exception', :class => ::ThriftShop::Shared::UnauthorizedException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

    end

  end
end
