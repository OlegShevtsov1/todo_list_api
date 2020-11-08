RSpec.describe 'Statuses', type: :request do
  include Docs::V1::Statuses::Api

  describe 'PATCH #update' do
    include Docs::V1::Statuses::Update

    let(:user) { create(:user) }
    let(:project) { create(:project, user_id: user.id) }
    let(:headers) { authorization_header_for(user) }

    context 'when success complete' do
      let!(:task) { create(:task, project_id: project.id) }

      let(:request_status) { patch v1_status_path(task), headers: headers, as: :json }

      it 'when do complete task', :dox do
        expect { request_status }.to change { Task.first.status }.from(false).to(true)
        expect(response).to have_http_status :ok
      end
    end

    context 'when success not complete' do
      let!(:task_complete) { create(:task, project_id: project.id, status: true) }

      let(:request_status) { patch v1_status_path(task_complete), headers: headers, as: :json }

      it 'when do not complete task', :dox do
        expect { request_status }.to change { Task.first.status }.from(true).to(false)
        expect(response).to have_http_status :ok
      end
    end

    context 'when failed' do
      let(:task) { create(:task) }
      let(:fail_id_task) { 0 }

      before { patch v1_status_path(fail_id_task), headers: headers, as: :json }

      it 'fail complete task', :dox do
        task
        expect(response).to have_http_status :not_found
        expect(Task.first.status).not_to eq(true)
      end
    end
  end
end
