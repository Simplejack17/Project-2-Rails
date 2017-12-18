Rails.application.routes.draw do
  root to: "posts#index"
  devise_for :users
  resources :users, only: [:show]
  # To avoid confusion / conflict with your devise routes below, considering writing
  # this as a custom route instead:
  #
  # get '/account' => 'account#index'
  #
  # or something along those lines


  resources :posts do
    resources :comments
  end
end
