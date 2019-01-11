# frozen_string_literal: true

require 'forwardable'
require 'json'

require 'twilio-ruby/version' unless defined?(Twilio::VERSION)
require 'twilio-ruby/framework'

Dir[File.dirname(__FILE__) + '/twilio-ruby/rest/*.rb'].each do |file|
  require file
end
Dir[File.dirname(__FILE__) + '/twilio-ruby/rest/**/*.rb'].each do |file|
  require file
end

require 'twilio-ruby/util/serialize'
require 'twilio-ruby/util/configuration'
require 'twilio-ruby/util'

module Twilio
  extend SingleForwardable

  def_delegators :configuration, :account_sid, :auth_token

  autoload(:TwiML, File.dirname(__FILE__) + '/twilio-ruby/twiml/twiml.rb')
  autoload(:JWT, File.dirname(__FILE__) + '/twilio-ruby/jwt/jwt.rb')

  module Security
    autoload(:RequestValidator, File.dirname(__FILE__) + '/twilio-ruby/security/request_validator.rb')
  end

  module HTTP
    autoload(:Client, File.dirname(__FILE__) + '/twilio-ruby/http/http_client.rb')
  end

  ##
  # Pre-configure with account SID and auth token so that you don't need to
  # pass them to various initializers each time.
  def self.configure(&block)
    yield configuration
  end

  ##
  # Returns an existing or instantiates a new configuration object.
  def self.configuration
    @configuration ||= Util::Configuration.new
  end
  private_class_method :configuration
end


module Rack
  autoload(:TwilioWebhookAuthentication, File.dirname(__FILE__) + '/rack/twilio_webhook_authentication.rb')
end