module Tasks
  class CreateService < BaseService
    def call
      project = current_object(Project)
      params = object_params(Task)
      task = project.tasks.new(params)
      authorize.call(project)
      TaskForm.new(current_user, params, task).call
    end
  end
end
