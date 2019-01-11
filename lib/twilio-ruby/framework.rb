# frozen_string_literal: true

module Twilio
  module REST
    autoload(:Domain, File.dirname(__FILE__) + '/framework/domain.rb')
    autoload(:InstanceContext, File.dirname(__FILE__) + '/framework/instance_context.rb')
    autoload(:InstanceResource, File.dirname(__FILE__) + '/framework/instance_resource.rb')
    autoload(:ListResource, File.dirname(__FILE__) + '/framework/list_resource.rb')
    autoload(:ObsoleteClient, File.dirname(__FILE__) + '/framework/obsolete_client.rb')
    autoload(:ObsoleteError, File.dirname(__FILE__) + '/framework/obsolete_error.rb')
    autoload(:Page, File.dirname(__FILE__) + '/framework/page.rb')
    autoload(:RestError, File.dirname(__FILE__) + '/framework/rest_error.rb')
    autoload(:TwilioError, File.dirname(__FILE__) + '/framework/twilio_error.rb')
    autoload(:TwilioResponse, File.dirname(__FILE__) + '/framework/twilio_response.rb')
    autoload(:Version, File.dirname(__FILE__) + '/framework/version.rb')
  end
  autoload(:Request, File.dirname(__FILE__) + '/framework/request.rb')
  autoload(:Response, File.dirname(__FILE__) + '/framework/response.rb')
  autoload(:Values, File.dirname(__FILE__) + '/framework/values.rb')
end