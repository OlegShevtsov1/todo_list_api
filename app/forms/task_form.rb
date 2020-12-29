class TaskForm
  include ActiveModel::Model

  attr_accessor :name, :status, :position, :deadline, :task, :current_user

  validates :name, presence: true

  def initialize(current_user, params, task)
    @current_user = current_user
    @params = params
    @task = task
    self.attributes = @params
  end

  def call
    return self unless valid?

    task.new_record? ? task.save : task.update(@params)
    task
  end
end
