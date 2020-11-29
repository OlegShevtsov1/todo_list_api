module Comments
  class CreateService < BaseService
    def call
      task = current_object(Task)
      authorize.call(task)
      params = object_params(Comment)
      comment = task.comments.new(params)
      CommentForm.new(current_user, params, comment).call
    end
  end
end
