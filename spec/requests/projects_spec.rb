RSpec.describe 'Projects', type: :request do
  include Docs::V1::Projects::Api

  describe 'GET #index' do
    include Docs::V1::Projects::Index

    before { get v1_projects_path, headers: headers, as: :json }

    context 'when authorization success' do
      let(:user) { create(:user) }
      let(:headers) { authorization_header_for(user) }

      it 'returns status ok', :dox do
        expect(response).to have_http_status(:ok)
      end
    end

    context 'when authorization fail' do
      let(:headers) { { 'Authorization': '' } }

      it 'returns unauthorized status', :dox do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end

  describe 'POST #create' do
    include Docs::V1::Projects::Create

    context 'when success' do
      let(:request_project) { post v1_projects_path, params: params, headers: headers, as: :json }

      let(:user) { create(:user) }

      let(:headers) { authorization_header_for(user) }
      let(:params) { { name: 'Project1' } }

      it 'create project', :dox do
        expect { request_project }.to change(Project, :count).from(0).to(1)
        expect(response).to be_created
      end
    end

    context 'when failed' do
      let(:user) { create(:user) }
      let(:headers) { authorization_header_for(user) }
      let(:params) { { name: '' } }

      before { post v1_projects_path, params: params, headers: headers, as: :json }

      it 'create project with wrong params', :dox do
        expect(user.projects).to be_empty
        expect(response).to have_http_status :unprocessable_entity
      end
    end
  end

  describe 'PUT #update' do
    include Docs::V1::Projects::Update

    let(:user) { create(:user) }
    let(:project) { create(:project, user_id: user.id) }
    let(:headers) { authorization_header_for(user) }

    context 'when success' do
      let(:request_project) { put v1_project_path(project), params: params, headers: headers, as: :json }

      let(:params) { { name: FFaker::Lorem.word } }

      it 'update project', :dox do
        expect { request_project }.to change { user.projects.first.name }.from(project.name).to(params[:name])
        expect(response).to have_http_status :ok
      end
    end

    context 'when failed 422' do
      let(:params) { { name: '' } }

      before { put v1_project_path(project), params: params, headers: headers, as: :json }

      it 'not update project 422', :dox do
        expect(response).to have_http_status :unprocessable_entity
      end
    end

    context 'when failed 404' do
      let(:failed_project_id) { 0 }
      let(:params) { { name: FFaker::Lorem.word } }

      before { put v1_project_path(failed_project_id), params: params, headers: headers, as: :json }

      it 'not update project', :dox do
        expect(response).to have_http_status :not_found
      end
    end
  end

  describe 'DELETE #destroy' do
    include Docs::V1::Projects::Destroy

    let(:user) { create(:user) }
    let(:project) { create(:project, user_id: user.id) }
    let(:headers) { authorization_header_for(user) }
    let(:failed_project_id) { 0 }

    context 'when success delete' do
      before { delete v1_project_path(project), headers: headers, as: :json }

      it 'delete project', :dox do
        expect(user.projects).to be_empty
        expect(response).to have_http_status :no_content
      end
    end

    context 'when failed delete' do
      let(:project1) { create(:project, user_id: user.id) }

      before { delete v1_project_path(failed_project_id), headers: headers, as: :json }

      it 'not found', :dox do
        project1
        expect(user.projects).not_to be_empty
        expect(response).to have_http_status :not_found
      end
    end
  end
end
