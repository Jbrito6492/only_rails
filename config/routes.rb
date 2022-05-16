Rails.application.routes.draw do
  devise_for :users
  resources :meetings
  root "home#index"
end
