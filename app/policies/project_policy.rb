class ProjectPolicy < ApplicationPolicy
  def call?
    user.projects.exists?(id: project.id)
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
