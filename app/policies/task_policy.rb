class TaskPolicy < ApplicationPolicy
  def create?
    user.tasks.exists?(id: task.id)
  end

  def update?
    user.tasks.exists?(id: task.id)
  end

  def destroy?
    user.tasks.exists?(id: task.id)
  end

  private

  def task
    record
  end
end
