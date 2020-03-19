Rails.application.routes.draw do

  get 'sessions/new'
  resources :create_jobs
  resources :instuitions
  resources :applies
    root            to: 'static_pages#index'
    get 'about',    to: 'static_pages#about'
    get 'contact',  to: 'static_pages#contact'
    get 'our',      to: 'static_pages#our'
    get 'famous',      to: 'static_pages#famous'
    get 'enter',    to: 'sessions#new'
    post 'enter',   to: 'sessions#create'
    delete 'exit',  to: 'sessions#destroy'
    resources :create_jobs
    resources :instuitions
    resources :applies
    resources :users, only: [:new, :create, :show]

end