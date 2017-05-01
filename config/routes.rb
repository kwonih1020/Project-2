Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :visits do
    resources :ratings
  end
end
