class CommentPolicy < ApplicationPolicy
  def call?
    user.comments.exists?(id: comment.id)
  end

  private

  def comment
    record
  end
end
