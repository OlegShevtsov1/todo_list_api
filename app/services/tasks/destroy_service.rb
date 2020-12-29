module Tasks
  class DestroyService < BaseService
    def call
      task = current_object(Task)
      authorize.call(task)
      task.destroy
    end
  end
end
