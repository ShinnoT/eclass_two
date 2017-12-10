Rails.application.routes.draw do
  devise_for :teachers
  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:index, :show, :new, :create] do
    resources :enrollments, only: [:create]
  end
  # get '/courses/:id/enroll', to: 'courses#enroll'
  # post '/courses/:id/enroll', to: 'courses#enroll', as: 'enroll'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
