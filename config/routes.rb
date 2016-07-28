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
  # delete '/posts/:id/delete' => 'posts#destroy', as: :post_delete
  devise_for :users
  # get 'pictures/:id' => 'pictures#show', as: :show
  # get 'posts/:id' => 'posts#search', as: :show_post
  # get 'pictures/:id/delete' => 'pictures#destroy', as: :pictures_delete
  get 'pictures/:id/delete' => 'pictures#destroy', as: :pictures_delete
  get 'posts/:id/delete' => 'posts#destroy', as: :posts_delete
  get 'posts/search' => 'posts#search', as: :search_posts
  # get 'posts/' => 'posts#search',
	# get '/user' => 'user#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
