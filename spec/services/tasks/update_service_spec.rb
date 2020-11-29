RSpec.describe Tasks::UpdateService do
  describe '#call' do
    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    context 'when params is valid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:task) { create(:task) }
      let(:valid_params) { { task: { name: FFaker::Lorem.word }, id: task.id } }
      let(:params) { ActionController::Parameters.new(valid_params) }

      it 'returns Task object' do
        expect(service.call.class).to eq(Task)
      end
    end

    context 'when params is invalid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:task) { create(:task) }
      let(:invalid_params) { { task: { name: '' }, id: task.id } }
      let(:params) { ActionController::Parameters.new(invalid_params) }

      it 'returns TaskForm' do
        expect(service.call.class).to eq(TaskForm)
      end

      it 'does not change task name' do
        expect { service.call }.not_to change(task, :name)
      end
    end
  end
end
