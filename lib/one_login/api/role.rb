module OneLogin
  module Api
    class Role < Base

      def get_roles(query_params = {})
        request_body = query_params

        perform_get("api/1/roles", request_body)
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