Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'primary#index'
  get 'about', to: 'primary#about'
  get 'contactus', to: 'primary#contactus'
  resources :contacts, only: [:new, :create, :update]
end
