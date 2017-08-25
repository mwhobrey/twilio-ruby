##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Wireless
      class V1 < Version
        ##
        # Initialize the V1 version of Wireless
        def initialize(domain)
          super
          @version = 'v1'
          @commands = nil
          @rate_plans = nil
          @sims = nil
        end

        ##
        # @param [String] sid The sid
        # @return [Twilio::REST::Wireless::V1::CommandInstance] if sid was passed.
        # @return [Twilio::REST::Wireless::V1::CommandList]
        def commands(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @commands ||= CommandList.new self
          else
            CommandContext.new(self, sid)
          end
        end

        ##
        # @param [String] sid The sid
        # @return [Twilio::REST::Wireless::V1::RatePlanInstance] if sid was passed.
        # @return [Twilio::REST::Wireless::V1::RatePlanList]
        def rate_plans(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @rate_plans ||= RatePlanList.new self
          else
            RatePlanContext.new(self, sid)
          end
        end

        ##
        # @param [String] sid The sid
        # @return [Twilio::REST::Wireless::V1::SimInstance] if sid was passed.
        # @return [Twilio::REST::Wireless::V1::SimList]
        def sims(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @sims ||= SimList.new self
          else
            SimContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Wireless::V1>'
        end
      end
    end
  end
end