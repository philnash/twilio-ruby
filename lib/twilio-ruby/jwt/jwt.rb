# frozen_string_literal: true
require 'jwt'

module Twilio
  module JWT
    autoload(:BaseJWT, File.dirname(__FILE__) + '/base_jwt.rb')
    autoload(:AccessToken, File.dirname(__FILE__) + '/access_token.rb')
    autoload(:ClientCapability, File.dirname(__FILE__) + '/client_capability.rb')
    autoload(:TaskRouterCapability, File.dirname(__FILE__) + '/task_router.rb')
  end
end