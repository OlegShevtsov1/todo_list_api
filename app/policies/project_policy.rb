class ProjectPolicy < ApplicationPolicy
  def create?
    user.projects.find_by(id: project.id)
  end

  def update?
    user.projects.find_by(id: project.id)
  end

  def destroy?
    user.projects.find_by(id: project.id)
  end

  private

  def project
    record
  end

  class Scope < Scope
    def resolve
      scope.where(user_id: user.id)
    end
  end
end
