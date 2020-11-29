module  Comments
  class DestroyService < BaseService
    def call
      comment = current_object(Comment)
      authorize.call(comment)
      comment.destroy
    end
  end
end
