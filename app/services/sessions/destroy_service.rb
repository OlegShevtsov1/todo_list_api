module Sessions
  class DestroyService
    def initialize(payload)
      @payload = payload
    end

    def call
      JWTSessions::Session.new(payload: @payload).flush_by_access_payload
    end
  end
end
