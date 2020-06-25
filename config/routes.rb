Rails.application.routes.draw do
  root 'welcome#home'
 
  resources :users do 
    resources :characters
  end

  resources :adventures do 
    resources :campaigns
    end
  
  
  resources :characters
  resources :campaigns
  resources :adventures

  

  get '/auth/:provider/callback' => 'sessions#omniauth'

  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  
  delete '/session/', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
