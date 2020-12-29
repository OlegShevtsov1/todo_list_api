module Tasks
  class SaveService < BaseService
    def call
      task = params[:id] ? update : create
      authorize.call(task) if task.persisted?
      TaskForm.new(current_user, object_params(Task), task).call
    end

    private

    def create
      project = current_object(Project)
      project.tasks.new object_params(Task)
    end

    def update
      current_object(Task)
    end
  end
end
