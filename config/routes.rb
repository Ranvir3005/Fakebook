Rails.application.routes.draw do
  resources :photos
  resources :posts
  get 'post/index'
  get 'password_resets/index'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :people
  
 
  get 'home/index'
  get'home/about'
  get 'home/profile'
  get '/search', to: 'your_controller#search'
  
  
  root to: "home#index"
# config/routes.rb


  # Other routes...

  resources :password_resets, only: [:new, :create, :reset_password]
# config/routes.rb


  # Other routes...

  post '/password_resets/reset_password', to: 'password_resets#reset_password'
end


 