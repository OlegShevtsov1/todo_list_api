RSpec.describe Projects::DestroyService do
  describe '#call' do
    let(:service) { described_class.new(params, user) }
    let(:user) { create(:user) }
    let(:project) { create(:project) }
    let(:params) { { id: project.id } }

    before { allow(service.instance_variable_get(:@authorize)).to receive(:call) }

    it 'destroys project' do
      expect { service.call }.to change(Project, :count).from(1).to(0)
    end
  end
end
