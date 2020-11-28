module Projects
  class CreateService < BaseService
    def call
      params = object_params(Project)
      project = current_user.projects.new(params)
      ProjectForm.new(current_user, params, project).call
    end
  end
end
