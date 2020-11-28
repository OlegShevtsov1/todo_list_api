RSpec.describe Projects::CreateService do
  describe '#call' do
    context 'when params is valid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:valid_params) { { project: { name: FFaker::Lorem.word } } }
      let(:params) { ActionController::Parameters.new(valid_params) }

      it 'returns Project object' do
        expect(service.call.class).to eq(Project)
      end

      it 'creates new project' do
        expect { service.call }.to change(Project, :count).from(0).to(1)
      end
    end

    context 'when params is invalid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:invalid_params) { { project: { name: '' } } }
      let(:params) { ActionController::Parameters.new(invalid_params) }

      it 'returns ProjectForm' do
        expect(service.call.class).to eq(ProjectForm)
      end

      it 'does not create new project' do
        expect { service.call }.not_to change(Project, :count)
      end
    end
  end
end
