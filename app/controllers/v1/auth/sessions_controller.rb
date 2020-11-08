module V1
  module Auth
    class SessionsController < ApplicationController
      def create
        user = User.find_by!(email: params[:email])
        if user.authenticate(params[:password])
          session = JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true)
          tokens = session.login
          cookie(tokens)

          render json: { csrf: tokens[:csrf] }
        else
          not_authorized
        end
      end

      def destroy
        authorize_access_request!
        session = JWTSessions::Session.new(payload: payload)
        session.flush_by_access_payload
        render json: :ok
      end

      private

      def cookie(tokens)
        response.set_cookie(JWTSessions.access_cookie,
                            value: tokens[:access],
                            httponly: true,
                            secure: Rails.env.production?)
      end
    end
  end
end
