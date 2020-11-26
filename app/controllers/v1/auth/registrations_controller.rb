module V1
  module Auth
    class RegistrationsController < ApplicationController
      def create
        user_form = UserForm.new(user_params)
        user = user_form.save
        if user
          session = JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true)
          tokens = session.login
          render json: { csrf: tokens[:csrf] }, status: :created
        else
          render json: { error: user_form.errors.full_messages.join(' ') }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:email, :password, :password_confirmation)
      end
    end
  end
end
