module RocketValidator
  module V0
    class HtmlIssue < Resource
      belongs_to :report
      belongs_to :web_page
    end
  end
end
