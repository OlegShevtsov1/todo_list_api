RSpec.describe Project, type: :model do
  context 'when associations' do
    it { is_expected.to belong_to(:user) }
  end
end
