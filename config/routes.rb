Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   namespace :api do
      namespace :v1 do
          resources :parks, only: [:index, :show]
          resources :photos, only: [:index, :show]
          resources :campgrounds, only: [:index, :show]
          resources :users
          resources :reviews
          get '/current_useaaaa', to: "auth#show"
          post '/login', to: 'auth#create'
      end
    end
end
