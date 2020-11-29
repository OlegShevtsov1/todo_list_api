RSpec.describe Sessions::DestroyService do
  include JWTSessions::RailsAuthorization

  describe '#call' do
    let(:user) { create(:user) }
    let(:service) { described_class.new({ user_id: user.id }) }
    let(:session) { instance_double('JWTSessions::Session') }

    before do
      allow(JWTSessions::Session).to receive(:new).and_return(session)
      allow(session).to receive(:flush_by_access_payload).and_return({})
    end

    it 'returns Hash' do
      expect(service.call.class).to eq(Hash)
    end
  end
end
