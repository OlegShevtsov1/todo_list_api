class UsersValidator < ActiveModel::Validator
  def validate(record)
    @email = record.email
    @password_confirmation = record.password_confirmation
    @password = record.password
    add_errors(record)
  end

  private

  def add_errors(record)
    record.errors[:email] << I18n.t('validation.user.email') if email_is_used?
    record.errors[:password_confirmation] << I18n.t('validation.user.password_confirmation') unless password_match?
  end

  def email_is_used?
    User.find_by(email: @email)
  end

  def password_match?
    @password_confirmation == @password
  end
end
