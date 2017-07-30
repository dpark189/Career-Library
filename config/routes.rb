Rails.application.routes.draw do
  root 'careers#index'
  resources :videos
  resources :careers do
    resources :videos, only: [:index]
  end
end
