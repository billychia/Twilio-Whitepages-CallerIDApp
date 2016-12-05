##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class UsageList < ListResource
            ##
            # Initialize the UsageList
            # @param [Version] version Version that contains the resource
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            
            # @return [UsageList] UsageList
            def initialize(version, account_sid: nil)
              super(version)
              
              # Path Solution
              @solution = {
                  account_sid: account_sid
              }
              
              # Components
              @records = nil
              @triggers = nil
            end
            
            ##
            # Access the records
            # @return [RecordList] RecordList
            def records
              @records ||= RecordList.new(
                  @version,
                  account_sid: @solution[:account_sid],
              )
            end
            
            ##
            # Access the triggers
            # @param [String] sid The usage-trigger Sid that uniquely identifies this resource
            
            # @return [TriggerList] TriggerList
            def triggers(sid=:unset)
              if sid != :unset
                return TriggerContext.new(
                    @version,
                    @solution[:account_sid],
                    sid,
                )
              end
              
                @triggers ||= TriggerList.new(
                    @version,
                    account_sid: @solution[:account_sid],
                )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Api.V2010.UsageList>'
            end
          end
        
          class UsagePage < Page
            ##
            # Initialize the UsagePage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            
            # @return [UsagePage] UsagePage
            def initialize(version, response, solution)
              super(version, response)
              
              # Path Solution
              @solution = solution
            end
            
            ##
            # Build an instance of UsageInstance
            # @param [Hash] payload Payload response from the API
            
            # @return [UsageInstance] UsageInstance
            def get_instance(payload)
              return UsageInstance.new(
                  @version,
                  payload,
                  account_sid: @solution['account_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Api.V2010.UsagePage>'
            end
          end
        
          class UsageInstance < InstanceResource
            ##
            # Initialize the UsageInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            
            # @return [UsageInstance] UsageInstance
            def initialize(version, payload, account_sid: nil)
              super(version)
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              "<Twilio.Api.V2010.UsageInstance>"
            end
          end
        end
      end
    end
  end
end