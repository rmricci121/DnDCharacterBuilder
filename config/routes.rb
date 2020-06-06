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
  # get 'user/new'
  # get 'user/show'
  
  
  
  resources :user
  resources :character
  resources :campaign
  resources :adventure
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
