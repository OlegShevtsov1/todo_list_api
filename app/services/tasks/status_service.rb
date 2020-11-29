module Tasks
  class StatusService < BaseService
    def call
      task = current_object(Task)
      authorize.call(task)
      task.toggle :status
      task.save
      task
    end
  end
end
