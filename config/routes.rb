Rails.application.routes.draw do
  resources :salaries
  resources :sales
  resources :products
  resources :pelanggans
  resources :montirs, except: [:new]
  resources :forgot_passwords, only: [:create]
  resources :password_resets, only: [:show, :create]
  

  get '/signup', to: 'montirs#new'
  root 'pages#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#destroy'

  get '/monthly', to: 'sales#monthly_report' 
  get '/forgot_passwords', to: 'forgot_passwords#new'
  get 'expired_token', to: 'password_resets#expired_token'
  get '/forgot_password_confirmation', to: 'forgot_passwords#confirm'

end
