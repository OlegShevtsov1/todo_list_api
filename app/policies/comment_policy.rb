class CommentPolicy < ApplicationPolicy
  def belongs_to_user?
    user.comments.exists?(id: comment.id)
  end

  def create?
    user.tasks.exists?(id: task.id)
  end

  def destroy?
    user.comments.exists?(id: comment.id)
  end

  private

  def comment
    record
  end
end
