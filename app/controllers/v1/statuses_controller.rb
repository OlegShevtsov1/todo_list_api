module V1
  class StatusesController < ApplicationController
    before_action :authorize_access_request!

    def update
      service = Tasks::StatusService.new(params, current_user).call
      render json: TaskSerializer.new(service).serializable_hash, status: :ok
    end
  end
end
