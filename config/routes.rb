Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get 'dashboard', to: 'home#index'
  get 'about', to: 'home#about'

  resources :sensors
  resources :readings
  resources :plants

end
