Rails.application.routes.draw do
  # post 'user_token' => 'user_token#create'
  resources :users
  scope '/auth' do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'
   end
   resources :requests, only: [:index, :create, :destroy, :update]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
