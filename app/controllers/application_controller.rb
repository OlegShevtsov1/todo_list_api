class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorization
  include Pundit
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
  rescue_from Pundit::NotAuthorizedError, with: :forbidden_content

  private

  def not_authorized
    render json: { error: I18n.t('controllers.application.not_authorized') }, status: :unauthorized
  end

  def not_found_error
    render json: { error: I18n.t('controllers.application.not_found') }, status: :not_found
  end

  def forbidden_content
    render json: { error: I18n.t('controllers.application.forbidden_content') }, status: :forbidden
  end

  def current_user
    @current_user ||= User.find(payload['user_id'])
  end

  def current_project
    @current_project ||= current_user.projects.find(params[:id])
  end

  def entity_error(status, errors)
    service = EntityErrorService.new(status, errors)
    render json: ErrorSerializer.new(service), status: status
  end
end
