RSpec.describe Projects::UpdateService do
  describe '#call' do
    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    context 'when params is valid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:project) { create(:project) }
      let(:valid_params) { { project: { name: FFaker::Lorem.word }, id: project.id } }
      let(:params) { ActionController::Parameters.new(valid_params) }

      it 'returns Project object' do
        expect(service.call.class).to eq(Project)
      end
    end

    context 'when params is invalid' do
      let(:service) { described_class.new(params, user) }
      let(:user) { create(:user) }
      let(:project) { create(:project) }
      let(:invalid_params) { { project: { name: '' }, id: project.id } }
      let(:params) { ActionController::Parameters.new(invalid_params) }

      it 'returns ProjectForm' do
        expect(service.call.class).to eq(ProjectForm)
      end

      it 'does not change project name' do
        expect { service.call }.not_to change(project, :name)
      end
    end
  end
end