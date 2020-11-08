RSpec.describe User, type: :model do
  it { is_expected.to have_secure_password }

  context 'with associations' do
    it { is_expected.to have_many(:tasks).through(:projects) }
    it { is_expected.to have_many(:comments).through(:tasks) }
  end
end
