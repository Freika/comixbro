Rails.application.routes.draw do
  resources :comixes, only: [:index, :show]

  namespace :admin do
    resources :comixes
    resources :publishers
    resources :genres
  end
end
