module Tasks
  class PrioritizationService < BaseService
    def call
      task = current_object(Task)
      params = object_params(Task)
      authorize.call(task)
      TaskPositionForm.new(current_user, params, task).call
    end
  end
end
