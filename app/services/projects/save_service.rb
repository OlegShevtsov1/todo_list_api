module Projects
  class SaveService < BaseService
    attr_reader :object

    def call
      params = object_params(Project)
      project = params_id ? update : create
      authorize.call(project) if project.persisted?
      @object ||= ProjectForm.new(current_user, params, project).call
      self
    end

    def serialize
      ProjectSerializer.new(object).serializable_hash
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
