module AuthorizationHelper
  def authorization_header_for(user)
    return unless user

    { Authorization: session(user).login[:access] }
  end

  def session(user)
    JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true)
  end
end

RSpec.configure do |config|
  config.include AuthorizationHelper
end
