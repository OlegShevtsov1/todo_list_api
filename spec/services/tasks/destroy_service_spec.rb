RSpec.describe Tasks::DestroyService do
  describe '#call' do
    let(:service) { described_class.new(params, user) }
    let(:user) { create(:user) }
    let(:task) { create(:task) }
    let(:params) { { id: task.id } }

    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    it 'destroys task' do
      expect { service.call }.to change(Task, :count).from(1).to(0)
    end
  end
end
