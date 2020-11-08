class ProjectForm
  include ActiveModel::Model

  attr_accessor :id, :user_id, :name

  validates :name, presence: true

  def save
    return unless valid?

    Project.create(name: name, user_id: user_id)
  end

  def update
    return unless valid?

    Project.find(id).update(name: name)
  end
end
