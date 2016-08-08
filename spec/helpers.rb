module Helpers
  # Helper method to parse a response
  #
  # @param [ActionController::TestResponse] response
  # @return [Hash]
  def parse_response(response)
    JSON.parse(response.body)
  end

  # Helper method to parse the result of rendering a view
  #
  # @param [String] rendered
  # @return [Hash]
  def parse_rendered(rendered)
    JSON.parse(rendered)
  end
end
