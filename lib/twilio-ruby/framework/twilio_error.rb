# frozen_string_literal: true

module Twilio
  module REST
    class TwilioError < StandardError
      # @deprecated all errors that have a body are now 'Twilio::RestError's
      def body
        warn "'Twilio::REST::TwilioError#body' has been deprecated. No 'TwilioError' objects are raised with a body."
        nil
      end
    end
  end
end