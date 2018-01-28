Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Setting the 'Home page' route use /root 
  root 'posts#index', as: 'home'

  # Default way to create a route
  get 'about' => 'pages#about', as: 'about'
  get '/signup',  to: 'users#new'
  # resources gives us create/new/show/update/destroy 
  # without having to create them ourselves
  resources :posts do 
  	resources :comments
  end

  resources :users#, except: :show
end
