module Projects
  class SaveService < BaseService
    attr_reader :object

    def call
      project = params[:id] ? update : create
      authorize.call(project) if project.persisted?
      @object ||= ProjectForm.new(current_user, object_params(Project), project).call
      self
    end

    def serialize
      ProjectSerializer.new(object).serializable_hash
    end

    private

    def create
      current_user.projects.new object_params(Project)
    end

    def update
      current_object(Project)
    end
  end
end
