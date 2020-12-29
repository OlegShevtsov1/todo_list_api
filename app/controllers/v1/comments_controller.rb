module V1
  class CommentsController < ApplicationController
    before_action :authorize_access_request!

    def create
      service = Comments::CreateService.new(params, current_user).call
      if service.errors.empty?
        render json: CommentSerializer.new(service).serializable_hash, status: :created
      else
        entity_error(:unprocessable_entity, service.errors)
      end
    end

    def destroy
      Comments::DestroyService.new(params, current_user).call
      head :no_content
    end
  end
end
