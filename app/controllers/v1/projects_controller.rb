module V1
  class ProjectsController < ApplicationController
    include Pundit
    before_action :authorize_access_request!

    def index
      render json: ProjectSerializer.new(projects).serializable_hash
    end

    def create
      service = Projects::SaveService.new(params, current_user).call
      if service.errors.empty?
        render json: ProjectSerializer.new(service).serializable_hash, status: :created
      else
        entity_error(:unprocessable_entity, service.errors)
      end
    end

    def update
      service = Projects::SaveService.new(params, current_user).call
      if service.errors.empty?
        render json: ProjectSerializer.new(service).serializable_hash, status: :ok
      else
        entity_error(:unprocessable_entity, service.errors)
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
