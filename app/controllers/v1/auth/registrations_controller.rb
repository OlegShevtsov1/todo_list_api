module V1
  module Auth
    class RegistrationsController < ApplicationController
      def create
        service = Registrations::CreateService.new(params).call
        if service.errors.empty?
          tokens = session(service).login
          render json: { csrf: tokens[:csrf] }, status: :created
        else
          render json: { error: service.errors.full_messages.join(' ') }, status: :unprocessable_entity
        end
      end
    end
  end
end
