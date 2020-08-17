# Rails.application.routes.draw do
#   resources :tasks
#   resources :users
#   post '/signup', to: "users#create"
#   post "/login", to: "auth#login"
#   get '/auto_login', to: 'auth#auto_login'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tasks
      resources :users
      post '/signup', to: "users#create"
      post "/login", to: "auth#login"
      get '/auto_login', to: 'auth#auto_login'
      
    end
  end
end
