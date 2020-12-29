RSpec.describe Comments::DestroyService do
  describe '#call' do
    let(:service) { described_class.new(params, user) }
    let(:user) { create(:user) }
    let(:comment) { create(:comment) }
    let(:params) { { id: comment.id } }

    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    it 'destroys comment' do
      expect { service.call }.to change(Comment, :count).from(1).to(0)
    end
  end
end
