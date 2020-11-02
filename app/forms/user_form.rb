class UserForm
  include ActiveModel::Model
  EMAIL_FORMAT = /\A[^@\s]+@[^@\s]+\z/.freeze
  MIN_PASSWORD_SIZ = 8
  PASSWORD_FORMAT = /\A[a-zA-Z0-9]*\z/.freeze

  attr_accessor :email, :password, :password_confirmation

  validates :email, :password, :password_confirmation, presence: true
  validates :email, format: { with: EMAIL_FORMAT }
  validates :password, length: { minimum: MIN_PASSWORD_SIZ }, format: { with: PASSWORD_FORMAT }
  validates_with UsersValidator

  def save
    return unless valid?

    User.create(email: email, password: password, password_confirmation: password_confirmation)
  end
end
