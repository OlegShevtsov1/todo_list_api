class TasksPositionValidator < ActiveModel::Validator
  POSITION_ACTIONS = { up: 'up', down: 'down' }.freeze

  def validate(record)
    record.errors[:position] << I18n.t('services.position_task.wrong_position') unless position_correct?(record)
  end

  private

  def position_correct?(record)
    POSITION_ACTIONS.value?(record.position)
  end
end
