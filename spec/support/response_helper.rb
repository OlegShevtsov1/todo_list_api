module ResponseHelper
  def response_json
    JSON.parse(response.body)
  rescue StandardError
    {}
  end
end

RSpec.configure do |config|
  config.include ResponseHelper
end
