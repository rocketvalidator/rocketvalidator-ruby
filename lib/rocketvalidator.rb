require "rocketvalidator/version"
require "json_api_client"

JsonApiClient::Paginating::NestedParamPaginator.page_param = "number"
JsonApiClient::Paginating::NestedParamPaginator.per_page_param = "size"

module RocketValidator
  class Base < JsonApiClient::Resource
    self.site = "https://rocketvalidator.dev/api/v0/"
    self.paginator = JsonApiClient::Paginating::NestedParamPaginator
  end

  class Report < Base
  end

  class WebPage < Base
    belongs_to :report
    belongs_to :common_html_issue
  end

  class CommonHtmlIssue < Base
    belongs_to :report
  end

  class HtmlIssue < Base
    belongs_to :report
    belongs_to :web_page
  end

  def self.with_api_token(api_token, &block)
    RocketValidator::Base.with_headers("Authorization" => "Bearer #{api_token}") do
      block.call
    end
  end
end
