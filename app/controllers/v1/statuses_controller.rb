module V1
  class StatusesController < ApplicationController
    before_action :authorize_access_request!

    def update
      authorize current_task
      current_task.toggle :status
      current_task.save
      render json: TaskSerializer.new(current_task).serializable_hash
    end
  end
end
