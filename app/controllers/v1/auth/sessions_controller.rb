module V1
  module Auth
    class SessionsController < ApplicationController
      def create
        service = Sessions::CreateService.new(params).call
        if service.authenticate(params[:password])
          tokens = session(service).login
          render json: { csrf: tokens[:csrf] }, status: :ok
        else
          not_authorized
        end
      end

      def destroy
        authorize_access_request!
        Sessions::DestroyService.new(payload).call
        render json: :ok
      end
    end
  end
end
