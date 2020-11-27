module V1
  class PrioritizationsController < ApplicationController
    before_action :authorize_access_request!

    def update
      AuthorizeService.new(current_user).call(current_task)
      service = PositionTaskService.new(current_task, params)
      if service.call
        render json: TaskSerializer.new(service.current_task).serializable_hash
      else
        exception_error(:unprocessable_entity, service.error)
      end
    end

    private

    def exception_error(status, errors)
      service = ExceptionErrorService.new(request.path, errors)
      render json: ErrorSerializer.new(service), status: status
    end
  end
end
