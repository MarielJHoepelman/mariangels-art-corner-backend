Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contents, param: :page_name
  resources :contacts, only: :create
  resources :products, param: :page_name
  # resources :users
  devise_for :users, path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup',
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

    resources :orders

    get 'account'    => 'accounts#show'
    
   #  devise_scope :user do
   #    get 'account'    => 'accounts#show'
   # end

end
