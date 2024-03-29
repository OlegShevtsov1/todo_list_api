RSpec.describe 'Position Task', type: :request do
  include Docs::V1::Prioritizations::Api

  describe 'PUT #update' do
    include Docs::V1::Prioritizations::Update

    let(:user) { create(:user) }
    let(:project) { create(:project, user_id: user.id) }
    let!(:task1) { create(:task, project_id: project.id, position: 1) }
    let!(:task2) { create(:task, project_id: project.id, position: 2) }
    let!(:task3) { create(:task, project_id: project.id, position: 3) }
    let(:headers) { authorization_header_for(user) }

    context 'when change position success up' do
      let(:params) { { task: { position: :up } } }

      let(:request_prior) { put v1_prioritization_path(task2), params: params, headers: headers, as: :json }

      it 'task position up', :dox do
        expect { request_prior }.to change { Task.find_by(id: task1.id).position }
          .from(1).to(2).and change { Task.find_by(id: task2.id).position }.from(2).to(1)
        expect(response).to have_http_status :ok
      end
    end

    context 'when change position success down' do
      let(:params) { { task: { position: :down } } }

      let(:request_prior) { put v1_prioritization_path(task2), params: params, headers: headers, as: :json }

      it 'task position down', :dox do
        expect { request_prior }.to change { Task.find_by(id: task2.id).position }
          .from(2).to(3).and change { Task.find_by(id: task3.id).position }.from(3).to(2)
        expect(response).to have_http_status :ok
      end
    end

    context 'when failure 404' do
      let(:fail_task_id) { 5 }
      let(:params) { {} }

      before { put v1_prioritization_path(fail_task_id), params: params, headers: headers, as: :json }

      it 'return 404', :dox do
        expect(response).to have_http_status :not_found
      end
    end

    context 'when failure 422' do
      let(:params) { { task: { position: FFaker::Lorem.word } } }

      before { put v1_prioritization_path(task2), params: params, headers: headers, as: :json }

      it 'return 422', :dox do
        expect(response).to have_http_status :unprocessable_entity
      end
    end
  end
end
