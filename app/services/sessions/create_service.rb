module Sessions
  class CreateService
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def call
      User.find_by!(email: params[:email])
    end
  end
end
