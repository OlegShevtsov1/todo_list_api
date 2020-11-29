RSpec.describe Comments::CreateService do
  describe '#call' do
    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    context 'when params is valid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:task) { create(:task) }
      let(:valid_params) { { comment: { description: FFaker::Lorem.word }, task_id: task.id } }
      let(:params) { ActionController::Parameters.new(valid_params) }

      it 'returns Comment model' do
        expect(service.call.class).to eq(Comment)
      end

      it 'creates new comment' do
        expect { service.call }.to change(Comment, :count).from(0).to(1)
      end
    end

    context 'when params is invalid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:task) { create(:task) }
      let(:invalid_params) { { comment: { description: '' }, task_id: task.id } }
      let(:params) { ActionController::Parameters.new(invalid_params) }

      it 'returns CommentForm' do
        expect(service.call.class).to eq(CommentForm)
      end

      it 'does not create new comment' do
        expect { service.call }.not_to change(Comment, :count)
      end
    end
  end
end
