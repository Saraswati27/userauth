Rails.application.routes.draw do
  resources :fruits
  #get 'fruits/index'
  #root 'fruits#index'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'

  resources :employees

  resources :sessions, only: [:new, :create, :destroy,:welcome]
  get 'signup', to: 'employees#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome',to: 'sessions#welcome', as:'welcome'

  match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
