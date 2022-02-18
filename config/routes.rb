Rails.application.routes.draw do
  root 'home#index'
  resources :users do 
    resources :notes
    resources :tasks
  end
  resources :sessions, only: [:new, :create, :destroy]
  
end
