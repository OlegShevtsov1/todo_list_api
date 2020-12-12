module Projects
  class SaveService < BaseService
    def call
      params = object_params(Project)
      project = params_id ? update : create
      authorize.call(project) if project.persisted?

      ProjectForm.new(current_user, params, project).call
    end

    private

    def create
      params = object_params(Project)
      current_user.projects.new(params)
    end

    def update
      current_object(Project)
    end
  end
end
