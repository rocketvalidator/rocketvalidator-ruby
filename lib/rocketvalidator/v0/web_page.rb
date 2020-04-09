module RocketValidator
  module V0
    class WebPage < Resource
      belongs_to :report
      belongs_to :common_html_issue
    end
  end
end
