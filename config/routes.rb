Rails.application.routes.draw do
  
    root 'pages#home'

    resources :sessions, only: [:new, :create, :destroy]

    resources :teachers, only: [:new, :create]

    resources :students, only: [:new, :create]

    resources :subjects

    get '/login', to: 'sessions#new'

    get '/logout', to: 'sessions#destroy' 

end
