class CommentPolicy < ApplicationPolicy
  def belongs_to_user?
    user.comments.find_by(id: comment.id)
  end

  def destroy?
    user.comments.find_by(id: comment.id)
  end

  private

  def comment
    record
  end
end
