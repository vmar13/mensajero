Rails.application.routes.draw do
  resources :conversations
  resources :messages
  resources :thoughts 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
