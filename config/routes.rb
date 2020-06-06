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
  
  
  
  resources :users
  resources :characters
  resources :campaigns
  resources :adventures

  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  #get 'signup' => 'users#new'
  get 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
