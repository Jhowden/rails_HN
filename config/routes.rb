Hackernews::Application.routes.draw do

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'post#index'

  resource :user
  resource :post
  resource :comment



end
