RSpec.describe Tasks::StatusService do
  describe '#call' do
    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    let(:service) { described_class.new(params, user) }
    let(:user) { create(:user) }
    let(:task) { create(:task) }
    let(:params) { { id: task.id } }

    it 'returns given service' do
      expect(service.call).to eq(task)
    end
  end
end
