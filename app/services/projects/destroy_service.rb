module Projects
  class DestroyService < BaseService
    def call
      project = current_object(Project)
      authorize.call(project)
      project.destroy
    end
  end
end
