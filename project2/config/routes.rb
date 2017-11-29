Rails.application.routes.draw do
  root to: "posts#index"
  devise_for :users
  resources :users, only: [:show]
  resources :posts do
    resources :comments
  end
end
