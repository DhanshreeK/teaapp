Rails.application.routes.draw do
  resources :teas
  root 'teas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
