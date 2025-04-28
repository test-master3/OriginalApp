Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index" # トップ＝投稿一覧
  resources :users, only: [:edit, :update]
end
