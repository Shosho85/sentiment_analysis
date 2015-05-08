Rails.application.routes.draw do
  root to: 'application#index'

  resources :sentiments, only: [:index, :show, :new, :create]
end
