Rails.application.routes.draw do
  devise_for :users
  get "home/index"
  get "/admin", to: "admin/base#home"
  root "static_pages#home"

  resources :information_user
  resources :conversations, only: [:new, :create, :show] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
end
