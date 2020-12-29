class TaskPositionForm
  include ActiveModel::Model
  POSITION = 'up'.freeze

  attr_accessor :position, :task, :current_user

  validates_with TasksPositionValidator

  def initialize(current_user, params, task)
    @current_user = current_user
    @params = params
    @task = task
    self.attributes = @params
  end

  def call
    return self unless valid?

    @params[:position] == POSITION ? task.move_higher : task.move_lower
    task
  end
end
