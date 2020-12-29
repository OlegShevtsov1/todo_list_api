module V1
  class ProjectsController < ApplicationController
    include Pundit
    before_action :authorize_access_request!

    def index
      render json: ProjectSerializer.new(projects).serializable_hash
    end

    def create
      service = Projects::SaveService.new(params, current_user).call
      if service.object.errors.empty?
        render json: service.serialize, status: :created
      else
        entity_error(:unprocessable_entity, service.object.errors)
      end
    end

    def update
      service = Projects::SaveService.new(params, current_user).call
      if service.object.errors.empty?
        render json: service.serialize, status: :ok
      else
        entity_error(:unprocessable_entity, service.object.errors)
      end
    end

    def destroy
      Projects::DestroyService.new(params, current_user).call
      head :no_content
    end

    private

    def projects
      @projects ||= policy_scope(Project)
    end
  end
end
