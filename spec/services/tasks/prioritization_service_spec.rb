RSpec.describe Tasks::PrioritizationService do
  describe '#call' do
    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    context 'when params is valid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:task) { create(:task) }
      let(:valid_params) { { task: { position: 'up' }, id: task.id } }
      let(:params) { ActionController::Parameters.new(valid_params) }

      it 'returns Task object' do
        expect(service.call.class).to eq(Task)
      end
    end

    context 'when params is not valid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:task) { create(:task) }
      let(:invalid_params) { { task: { position: FFaker::Lorem.word }, id: task.id } }
      let(:params) { ActionController::Parameters.new(invalid_params) }

      it 'returns TaskPositionForm' do
        expect(service.call.class).to eq(TaskPositionForm)
      end

      it 'does not change task name' do
        expect { service.call }.not_to change(task, :position)
      end
    end
  end
end
