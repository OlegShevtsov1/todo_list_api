RSpec.describe Sessions::CreateService do
  describe '#call' do
    let(:service) { described_class.new(params) }

    let(:user) { create(:user) }
    let(:params) { { email: user.email, password: user.password } }

    it 'returns object User' do
      expect(service.call.class).to eq(User)
    end
  end
end
