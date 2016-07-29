Rails.application.routes.draw do
  # get 'static/index'
  # get '/post/new' => 'post#new', as :new_post

  # get '/post' => 'post#index'

  # post '/post' => 'post#create'

  # get '/post/new' => 'post#new', as: :new_post

  # get '/post/:id/edit' => 'post#edit', as: :edit_post

  # get '/post/:id' => 'post#show', as: :post

  # patch '/post/:id/update' => 'post#update'

  root to: "static#index"
  resources :posts
	# resources :users
  resources :pictures
	resources :static
  devise_for :user
  resources :friendships
  # get 'users/:id' => 'users#show', as: :show_user
  get 'users/' => 'users#index', as: :users
  get 'user/:id' => 'users#show', as: :show_user
  # get 'pictures/:id' => 'pictures#show', as: :show
  get 'posts/:id' => 'posts#search', as: :show_post
  # get 'pictures/:id/delete' => 'pictures#destroy', as: :pictures_delete
  # get 'pictures/:id/delete' => 'pictures#destroy', as: :pictures_delete
  # post '/friendships' => 'friendships#create'
  delete 'posts/:id' => 'posts#destroy', as: :posts_delete
  # delete '/post/:id/delete' => 'posts#destroy', as: :post_delete
  # get 'posts/:query' => 'posts#search', as: :search_posts
  get 'posts/' => 'posts#search', as: :search_posts
  # get 'posts/' => 'posts#search',
	# get '/user' => 'user#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
