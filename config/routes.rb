Rails.application.routes.draw do
  devise_for :users
  root 'index#index'
  namespace :user do
    resources :planets, only: [:new, :create, :show]
  end
end
