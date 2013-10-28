Hackernews::Application.routes.draw do

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  resources :users
  resources :posts do
    resources :comments
  end

   get '/logout' => 'users#logout'
   post '/login' => 'users#login'

  root :to => 'posts#index'

end
