RSpec.describe Registrations::CreateService do
  describe '#call' do
    context 'when params is valid' do
      let(:user_params) do
        { user:
              { email: FFaker::Internet.email,
                password: 'Password',
                password_confirmation: 'Password' } }
      end

      let(:params) { ActionController::Parameters.new(user_params) }
      let(:service) { described_class.new(params) }

      it 'returns User model' do
        expect(service.call.class).to eq(User)
      end

      it 'creates new user' do
        expect { service.call }.to change(User, :count).from(0).to(1)
      end
    end

    context 'when params is invalid' do
      let(:user_params) do
        { user:
              { email: '',
                password: FFaker::Internet.password,
                password_confirmation: '' } }
      end
      let(:params) { ActionController::Parameters.new(user_params) }
      let(:service) { described_class.new(params) }

      it 'returns UserForm' do
        expect(service.call.class).to eq(UserForm)
      end

      it 'does not create new user' do
        expect { service.call }.not_to change(User, :count)
      end
    end
  end
end
