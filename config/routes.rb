Rails.application.routes.draw do
  devise_for :users
  root to: 'tags#_landing'
  resources :tags do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  resources :projects do
    resources :comments, only: :create
  end
end
