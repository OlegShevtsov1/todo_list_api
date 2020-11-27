module V1
  class TasksController < ApplicationController
    before_action :authorize_access_request!

    def create
      AuthorizeService.new(current_user).call(current_project)
      task_form = TaskForm.new(task_params.merge(project_id: current_project.id))
      task = task_form.save
      if task
        render json: TaskSerializer.new(task).serializable_hash, status: :created
      else
        entity_error(:unprocessable_entity, task_form.errors)
      end
    end

    def update
      AuthorizeService.new(current_user).call(current_task)
      task_form = TaskForm.new(task_params.merge(id: params[:id]))
      if task_form.update
        render json: TaskSerializer.new(current_task).serializable_hash
      else
        entity_error(:unprocessable_entity, task_form.errors)
      end
    end

    def destroy
      AuthorizeService.new(current_user).call(current_task)
      current_task.destroy
      head :no_content
    end

    private

    def task_params
      params.permit(:name, :deadline)
    end
  end
end
