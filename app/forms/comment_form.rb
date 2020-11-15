class CommentForm
  include ActiveModel::Model

  MAX_SIZE = 300

  attr_accessor :id, :task_id, :description, :image

  validates :description, presence: true
  validates :description, length: { maximum: MAX_SIZE,
                                    message: I18n.t('validation.comment.wrong_comment_size', max_size: MAX_SIZE) }

  def save
    return unless valid?

    Comment.create(task_id: task_id, description: description, image: image)
  end
end
