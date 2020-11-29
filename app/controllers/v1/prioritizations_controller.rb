module V1
  class PrioritizationsController < ApplicationController
    before_action :authorize_access_request!

    def update
      service = Tasks::PrioritizationService.new(params, current_user).call
      if service.errors.empty?
        render json: TaskSerializer.new(service).serializable_hash, status: :ok
      else
        entity_error(:unprocessable_entity, service.errors)
      end
    end
  end
end
