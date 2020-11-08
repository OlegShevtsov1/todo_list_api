class TaskPolicy < ApplicationPolicy
  def create?
    user.tasks.find_by(id: task.id)
  end

  def update?
    user.tasks.find_by(id: task.id)
  end

  def destroy?
    user.tasks.find_by(id: task.id)
  end

  private

  def task
    record
  end
end
