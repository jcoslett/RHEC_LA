Rails.application.routes.draw do

  root "static#index"
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  get '/welcome', to: 'users#welcome'
  get '/pick_course/:id', to: 'users#pick_course', as: 'pick_course'

  resources :users, only: [:new, :create, :show]

  # Create a better looking URL for logging in
  resources :sessions, only: [:create]

# resources :users, only: [:new, :create]

  # get "courses/" => "courses#index"
  # get "courses/new" => "courses#new", as: :new_course
  # get "courses/:id" => "courses#show", as: :course
  # post "courses/" => "courses#create"
  # get "courses/:id/edit" => "courses#edit", as: :edit_course
  # patch "courses/:id" => "courses#update"
  # delete "courses/:id" => "courses#destroy"

  resources :courses
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
end




