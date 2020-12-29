class ProjectForm
  include ActiveModel::Model

  attr_accessor :name, :project, :current_user

  validates :name, presence: true
  validates_with ProjectsValidator

  def initialize(current_user, params, project)
    @current_user = current_user
    @params = params
    @project = project
    self.attributes = params
  end

  def call
    return self unless valid?

    project.new_record? ? project.save : project.update(@params)
    project
  end
end
