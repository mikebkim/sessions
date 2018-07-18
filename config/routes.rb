Rails.application.routes.draw do
  
    root 'pages#home'

    resources :sessions, only: [:new, :create] do
        delete 'destroy_student', on: :member
        delete 'destroy_teacher', on: :member
    end

    resources :teachers, only: [:new, :create, :index, :show]

    resources :students, only: [:new, :create, :index, :show] do
        post 'student_form', on: :collection
    end

    resources :subjects

    resources :lessons do
        resources :appointments, shallow: true, only: [:create, :destroy]
    end

    get '/appointments', to: 'appointments#index', as: 'appointments'

    get '/students/student_form', to: 'students#index'

    get '/login', to: 'sessions#new'

    get '/logout', to: 'sessions#destroy' 

end
