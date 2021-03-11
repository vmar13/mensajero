Rails.application.routes.draw do
  get 'thoughts/index'
  get 'thoughts/show'
  get 'thoughts/new'
  get 'thoughts/create'
  resources :conversations
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
