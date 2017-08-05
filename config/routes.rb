Rails.application.routes.draw do
  devise_for :users
  root 'careers#index'
  resources :videos
  resources :careers do
    resources :videos, only: [:index, :new, :create]
  end
end
