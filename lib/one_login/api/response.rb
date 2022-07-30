module OneLogin
  module Api
    class Response < HttpApi::Response

      def status_code
        parse_response["status"]["code"]
      end

      def status_message
        parse_response["status"]["message"]
      end

      def data
        parse_response["data"]
      end

      def more_paginated_results_present?
        parse_response["pagination"]["after_cursor"].present?
      end

      def after_cursor
        parse_response["pagination"]["after_cursor"]
      end

    end
  end
end