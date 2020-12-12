module V1
  class TasksController < ApplicationController
    before_action :authorize_access_request!

    def create
      service = Tasks::SaveService.new(params, current_user).call
      if service.errors.empty?
        render json: TaskSerializer.new(service).serializable_hash, status: :created
      else
        entity_error(:unprocessable_entity, service.errors)
      end
    end

    def update
      service = Tasks::SaveService.new(params, current_user).call
      if service.errors.empty?
        render json: TaskSerializer.new(service).serializable_hash
      else
        entity_error(:unprocessable_entity, service.errors)
      end
    end

    def destroy
      Tasks::DestroyService.new(params, current_user).call
      head :no_content
    end
  end
end
