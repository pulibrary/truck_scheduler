Rails.application.routes.draw do
  root 'pages#home' 
  get 'pages/home'
  post '/contact', to:"pages#contact"
  resources :reservations
  resources :customers
  resources :trucks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
