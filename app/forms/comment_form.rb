class CommentForm
  include ActiveModel::Model

  MAX_SIZE = 300

  attr_accessor :description, :image, :comment, :current_user

  validates :description, presence: true
  validates :description, length: { maximum: MAX_SIZE,
                                    message: I18n.t('validation.comment.wrong_comment_size', max_size: MAX_SIZE) }

  def initialize(current_user, params, comment)
    @current_user = current_user
    @comment = comment
    self.attributes = params
  end

  def call
    return self unless valid?

    comment.save
    comment
  end
end
