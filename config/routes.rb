Rails.application.routes.draw do
   root to:  "nursemaids#index"
  resources :nursemaids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
