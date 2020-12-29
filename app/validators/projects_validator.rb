class ProjectsValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:name] << I18n.t('validation.project.name') if name_is_used?(record)
  end

  private

  def name_is_used?(record)
    Project.exists?(name: record.name, user: record.current_user)
  end
end
