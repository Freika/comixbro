Rails.application.routes.draw do
  resources :comixes, only: [:index, :show]
  root 'comixes#index'

  namespace :admin do
    resources :comixes
    resources :publishers
    resources :genres
    resources :pages
  end
end
