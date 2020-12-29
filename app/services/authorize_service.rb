class AuthorizeService
  include Pundit

  attr_reader :current_user

  def initialize(current_user)
    @current_user = current_user
  end

  def call(object)
    authorize object
  end

  private

  def action_name
    :call
  end
end
