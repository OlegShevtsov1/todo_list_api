class BaseService
  attr_reader :params, :current_user, :authorize

  def initialize(params, current_user)
    @params = params
    @current_user = current_user
    @authorize = AuthorizeService.new(current_user)
  end

  private

  def object_params(object_type)
    PermitParamsService.new(@params, object_type).call
  end

  def current_object(object_type)
    @current_object ||= FindObjectService.new(object_type, @params).call
  end

  def params_id
    @params[:id]
  end
end
