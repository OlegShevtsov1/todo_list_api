module V1
  class CommentsController < ApplicationController
    before_action :authorize_access_request!

    def create
      authorize current_task
      comment_form = CommentForm.new(comment_params.merge(task_id: current_task.id))
      comment = comment_form.save
      if comment
        render json: CommentSerializer.new(comment).serializable_hash, status: :created
      else
        entity_error(:unprocessable_entity, comment_form.errors)
      end
    end

    def destroy
      authorize current_comment
      current_comment.destroy
      head :no_content
    end

    def comment_params
      params.permit(:description, :image)
    end

    private

    def current_comment
      @current_comment ||= Comment.find(params[:id])
    end
  end
end
