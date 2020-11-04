Rails.application.routes.draw do
  root 'static_pages#show'

  namespace :v1 do
    namespace :auth do
      post '/', controller: :registrations, action: :create
      post '/sign_in', controller: :sessions, action: :create
      delete '/sign_out', controller: :sessions, action: :destroy
    end
  end
end
