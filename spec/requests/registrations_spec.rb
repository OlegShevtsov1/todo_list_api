RSpec.describe 'Registrations', type: :request do
  describe 'POST /auth' do
    context 'when success' do
      let(:object) { post v1_auth_path, params: params, as: :json }

      let(:user_params) { attributes_for(:user) }
      let(:params) do
        {
          email: user_params[:email],
          password: user_params[:password],
          password_confirmation: user_params[:password]
        }
      end

      it 'create user by token' do
        expect { object }.to change(User, :count).from(0).to(1)
        expect(response_json.keys).to eq ['csrf']
        expect(response.cookies[JWTSessions.access_cookie]).to be_present
        expect(response).to be_created
      end
    end

    context 'when failed' do
      let(:params) { {} }

      before { post v1_auth_path, params: params, as: :json }

      it 'user id empty' do
        expect(User.all).to be_empty
      end

      it 'create user by token' do
        expect(response).to have_http_status :unprocessable_entity
      end
    end
  end
end
