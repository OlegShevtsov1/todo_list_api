module Registrations
  class CreateService < BaseService
    def initialize(params)
      @params = params
    end

    def call
      params = object_params(User)
      user = User.new(params)
      UserForm.new(user, params).call
    end
  end
end
