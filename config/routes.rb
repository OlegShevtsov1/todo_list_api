Rails.application.routes.draw do
  namespace :v1 do
    namespace :auth do
      post '/', controller: :registrations, action: :create
      post '/sign_in', controller: :sessions, action: :create
      delete '/sign_out', controller: :sessions, action: :destroy
    end
  end
end
