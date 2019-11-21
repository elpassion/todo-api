Rails.application.routes.draw do
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Views
  get 'about', to: 'about#page'

  # API
  get 'welcome', to: 'welcome#page'
end
