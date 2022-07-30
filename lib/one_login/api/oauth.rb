module OneLogin
  module Api
    class Oauth < Base

      def get_oauth_token
        request_body = { "grant_type": "client_credentials" }

        perform_post("auth/oauth2/token", request_body)
      end

      def revoke_token(access_token)
        request_body = { "access_token": access_token }
        
        perform_post("auth/oauth2/revoke", request_body)
      end

      private

      def request_headers(options)
        {
          "Content-Type" => "application/json",
          "Authorization" => "client_id:#{onelogin_options[:client_id]}, client_secret:#{onelogin_options[:client_secret]}"
        }
      end

    end
  end
end