##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Preview
      class Sync < Version
        ##
        # Initialize the Sync version of Preview
        def initialize(domain)
          super
          @version = 'Sync'
          @services = nil
        end

        def services(sid=:unset)
          if sid == :unset
            @services ||= ServiceList.new self
          else
            ServiceContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          #<Twilio::REST::Preview::Sync>
        end
      end
    end
  end
end
