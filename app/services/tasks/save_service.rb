module Tasks
  class SaveService < BaseService
    def call
      params = object_params(Task)
      task = params_id ? update : create
      authorize.call(task) if task.persisted?
      TaskForm.new(current_user, params, task).call
    end

    private

    def create
      params = object_params(Task)
      project = current_object(Project)
      project.tasks.new(params)
    end

    def update
      current_object(Task)
    end
  end
end
