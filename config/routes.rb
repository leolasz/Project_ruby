Rails.application.routes.draw do

  resources :applies
    root            to: 'static_pages#index'
    get 'about',    to: 'static_pages#about'
    get 'contact',  to: 'static_pages#contact'
    get 'contact',  to: 'static_pages#hist'

    resources :applies
    resources :users, only: [:new, :create]

end