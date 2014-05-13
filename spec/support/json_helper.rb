module JSONHelper
  def json_response
    response_body = JSON.parse(response.body)
    response_body.kind_of?(Hash) ? HashWithIndifferentAccess.new(response_body) : response_body
  end
end
