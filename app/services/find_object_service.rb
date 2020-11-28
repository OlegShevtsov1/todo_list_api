class FindObjectService
  def initialize(object_type, params)
    @object_type = object_type
    @params = params
  end

  def call
    @object_type.find(@params[params_type] || @params[:id])
  end

  private

  def params_type
    "#{@object_type.to_s.downcase}_id"
  end
end
