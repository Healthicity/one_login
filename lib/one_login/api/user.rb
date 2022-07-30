module OneLogin
  module Api
    class User < Base

      def get_users(query_params = {})
        request_body = query_params

        perform_get("api/1/users", request_body)
      end


      private

      def request_headers(options)
        {
          "Content-Type" => "application/json",
          "Authorization" => "bearer:#{onelogin_options[:access_token]}"
        }
      end

    end
  end
end