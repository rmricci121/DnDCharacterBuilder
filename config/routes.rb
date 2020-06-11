Rails.application.routes.draw do
  root 'welcome#home'
  # get 'adventure/new'
  # get 'adventure/show'
  # get 'adventure/index'
  # get 'campaign/new'
  # get 'campaign/show'
  # get 'campaign/index'
  # get 'character/new'
  # get 'character/show'
  # get 'character/index'
  # get 'sessions/new'
  # get 'sessions/show'
  # get 'sessions/index'
   #get 'users/new'
  # get 'user/show'
  
  resources :users do 
    resources :characters
  end

  resources :adventures do 
    resources :campaigns
    end
  
  #resources :users
  resources :characters
  resources :campaigns
  resources :adventures

  # get 'auth/:provider/callback', to: 'sessions#googleAuth'
  # get 'auth/failure', to: redirect('/')

  # get '/auth/google/callback', to: 'sessions#create'
  # get '/auth/google'

  get '/auth/:provider/callback' => 'sessions#omniauth'
  
  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  #get 'signup' => 'users#new'
  delete '/session/', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
