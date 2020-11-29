module Tasks
  class UpdateService < BaseService
    def call
      task = current_object(Task)
      params = object_params(Task)
      authorize.call(task)
      TaskForm.new(current_user, params, task).call
    end
  end
end
