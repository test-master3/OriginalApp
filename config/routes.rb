Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index" # トップ＝投稿一覧
  resources :posts, only: [:index, :new, :create, :show]
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end