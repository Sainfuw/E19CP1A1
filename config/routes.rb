Rails.application.routes.draw do
  devise_for :admins
  resources :workers
  resources :projects do
    resources :workpros, only: [:create, :destroy]
  end
  resources :pages, only: :index
  root 'pages#index'
end
