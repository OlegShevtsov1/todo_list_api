class PermitParamsService
  PARAMS = {
    project: %i[name],
    task: %i[name deadline position],
    comment: %i[description image]
  }.freeze

  def initialize(params, object_type)
    @params = params
    @object_type = object_type
  end

  def call
    @params.require(params_key).permit(permitted_keys)
  end

  private

  def permitted_keys
    PARAMS[params_key]
  end

  def params_key
    @object_type.to_s.downcase.to_sym
  end
end
