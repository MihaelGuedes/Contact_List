Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :contacts
  resources :clients
  resources :users, only: [:new, :create, :show]
  
  get 'sessions/new'
  get 'inicio' => 'welcome#index'
  get 'entrar' => 'sessions#new'
  get 'contato' => 'static_pages#contato'
  get 'sobre' => 'static_pages#sobre'
  post 'entrar' => 'sessions#create'
  delete 'sair' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
