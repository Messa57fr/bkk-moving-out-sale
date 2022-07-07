Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :posts do
    resources :comments, only: [:create]
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
