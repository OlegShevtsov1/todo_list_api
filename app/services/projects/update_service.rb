module Projects
  class UpdateService < BaseService
    def call
      params = object_params(Project)
      project = current_object(Project)
      authorize.call(project)
      ProjectForm.new(current_user, params, project).call
    end
  end
end
