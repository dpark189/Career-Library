Rails.application.routes.draw do
  root 'careers#index'
  resources :videos
  resources :careers do
    resources :videos, only: [:index, :new, :create]
  end
end
