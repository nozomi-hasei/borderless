Rails.application.routes.draw do
  devise_for :users
  root to: 'tags#index'
  resources :tags
end
