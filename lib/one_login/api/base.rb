require 'http_api'

module OneLogin
  module Api
    class Base
      include HttpApi::Request
      
      BASE_URL = "https://api.us.onelogin.com"

      attr_accessor :onelogin_options

      def initialize(onelogin_options)
        @onelogin_options = onelogin_options
      end

      def url
        BASE_URL
      end

      private

      def response_with_wrapper(response)
        Response.new(response)
      end

    end
  end
end