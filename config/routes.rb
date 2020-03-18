Rails.application.routes.draw do

  get 'sessions/new'
  resources :create_jobs
  resources :instuitions
  resources :applies
    root            to: 'static_pages#index'
    get 'about',    to: 'static_pages#about'
    get 'contact',  to: 'static_pages#contact'
    get 'contact',  to: 'static_pages#hist'
    get 'enter',    to: 'sessions#new'
    post 'enter',   to: 'sessions#create'
    delete 'exit',  to: 'sessions#destroy'
    
    resources :instuitions
    resources :applies
    resources :users, only: [:new, :create, :show]

end