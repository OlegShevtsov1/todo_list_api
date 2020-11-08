class TaskForm
  include ActiveModel::Model

  attr_accessor :id, :project_id, :name, :status, :position, :deadline

  validates :name, presence: true

  def save
    return unless valid?

    Task.create(project_id: project_id, name: name, deadline: deadline)
  end

  def update
    return unless valid?

    Task.find(id).update(name: name, deadline: deadline)
  end
end
