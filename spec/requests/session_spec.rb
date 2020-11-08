RSpec.describe 'Sessions', type: :request do
  let(:user) { create(:user) }

  describe 'POST #create' do
    context 'when success' do
      let(:headers) { authorization_header_for(user) }
      let(:params) { { email: user.email, password: user.password } }

      before { post v1_auth_sign_in_path, params: params, headers: headers, as: :json }

      it 'create user by token' do
        expect(response_json.keys).to eq ['csrf']
        expect(response.cookies[JWTSessions.access_cookie]).to be_present
        expect(response).to have_http_status :ok
      end
    end

    context 'when failed' do
      let(:params) { { email: user.email, password: 'wrong password' } }

      before { post v1_auth_sign_in_path, params: params }

      it 'create user by token', :dox do
        expect(response).to have_http_status :unauthorized
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'when success' do
      let(:headers) { authorization_header_for(user) }

      before { delete v1_auth_sign_out_path, headers: headers, as: :json }

      it 'returns http status success' do
        expect(response.cookies[JWTSessions.access_cookie]).not_to be_present
        expect(response).to have_http_status :ok
      end
    end

    context 'when failed' do
      let(:user) { nil }
      let(:headers) { authorization_header_for(user) }

      before { delete v1_auth_sign_out_path, headers: headers, as: :json }

      it 'returns unauthorized http status' do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
