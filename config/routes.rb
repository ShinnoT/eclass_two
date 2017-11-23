Rails.application.routes.draw do
  devise_for :teachers
  devise_for :users
  root to: 'pages#home'
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
