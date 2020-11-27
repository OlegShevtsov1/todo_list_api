class TaskPolicy < ApplicationPolicy
  def call?
    user.tasks.exists?(id: task.id)
  end

  private

  def task
    record
  end
end
