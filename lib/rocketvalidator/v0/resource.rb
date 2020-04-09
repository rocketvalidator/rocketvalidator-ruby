module RocketValidator
  module V0
    class Resource < JsonApiClient::Resource
      self.site = "https://rocketvalidator.dev/api/v0/"
      self.paginator = JsonApiClient::Paginating::NestedParamPaginator

      def self.with_api_token(token)
        with_headers(authorization: "Bearer #{token}") do
          yield
        end
      end
    end
  end
end
