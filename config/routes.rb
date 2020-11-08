Rails.application.routes.draw do
  namespace :v1 do
    namespace :auth do
      post '/', controller: :registrations, action: :create
    end
  end
end
