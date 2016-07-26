Rails.application.routes.draw do
  # get 'static/index'
  # get '/post/new' => 'post#new', as :new_post

  # get '/post' => 'post#index'

  # post '/post' => 'post#create'

  # get '/post/new' => 'post#new', as: :new_post

  # get '/post/:id/edit' => 'post#edit', as: :edit_post

  # get '/post/:id' => 'post#show', as: :post

  # patch '/post/:id/update' => 'post#update'

  resources :posts
	resources :user
  resources :pictures
	resources :static
  devise_for :users
  # delete '/posts/:id/delete' => 'posts#destroy', as: :post_delete
  get 'pictures/:id' => 'pictures#show', as: :pictures_show
  get 'pictures/:id/delete' => 'pictures#destroy', as: :pictures_delete
  root to: "static#index"
	# get '/user' => 'user#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
