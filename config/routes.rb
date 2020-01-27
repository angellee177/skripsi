Rails.application.routes.draw do
  resources :salaries
  resources :sales
  resources :products
  resources :pelanggans
  resources :montirs, except: [:new]

  get '/signup', to: 'montirs#new'
  root 'pages#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#destroy'

  get '/salary', to: 'sales#group_month'
end
