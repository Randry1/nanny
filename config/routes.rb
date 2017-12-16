Rails.application.routes.draw do
  get 'home/index'

   root to:  "home#index"
  resources :nursemaids
  resources :pictures, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
