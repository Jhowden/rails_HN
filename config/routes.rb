Hackernews::Application.routes.draw do

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  resources :users
  resources :posts
  resources :comments

   get '/logout' => 'users#logout'
   post '/login' => 'users#login'

  root :to => 'posts#index'

end
