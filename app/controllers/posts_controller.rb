class PostsController < ApplicationController
	def index
    if params[:query]
      @posts = Post.search(params[:query])
    else
  		@posts = Post.where(user_id: current_user.id)
  		posts_array = []

  		@posts.each do |p|

    			p_hash = {
    				id: p.id,
    				title: p.title,
    				url: p.url,
    				content: p.content,
    				latitude: p.latitude,
    				longitude: p.longitude,
    			}


  			posts_array << p_hash
  		end
    end
    # render json: posts_array
    # @posts= Post.all
  end

  def new
  	@post = Post.new
    render :new
    # render json: @post 
  end
  def edit
  	@post = Post.find(params[:id])
  end


  def create
	    @post= Post.new(params.require(:post).permit(:title,:user_id,:content,:latitude,:longitude,:url) )
    if @post.save
      redirect_to posts_path 
    else
      # render :new
    end
  	# new_post = current_user.posts.new(title: params[:post][:title], url: params[:post][:url], content: params[:post][:content], latitude: params[:post][:latitude], longitude: params[:post][:longitude])

  	# if params[:post]
  	# 	new_post = current_user.posts.new(title: params[:post][:title], url: params[:post][:url], content: params[:post][:content], latitude: params[:post][:latitude], longitude: params[:post][:longitude], advert: params[:post][:advert])
  	# 	new_post.save
  	# 	session[:post_id] = new_post.id
  	# 	render json: new_post
  	# else
  	# 	new_post = current_user.posts.new(title: params[:post][:title], url: params[:post][:url], content: params[:post][:content], latitude: params[:post][:latitude], longitude: params[:post][:longitude])

  	# 	new_post.save
  	# 	session[:post_id] = new_post.id
  	# 	render json: new_post
  	# end
  end

  def show
  	@post = Post.find(params[:id])
    if params[:search]
      @posts = Post.search(params[:query])
    else
      @posts = Post.all
      posts_array = []

      @posts.each do |p|

          p_hash = {
            id: p.id,
            title: p.title,
            url: p.url,
            content: p.content,
            latitude: p.latitude,
            longitude: p.longitude,
          }


        posts_array << p_hash
      end
    end
  	if @post
  		render json: post
  	else
  		render json: {errors: post.errors}
  	end
  end

  def update
  	@post = Post.find(params[:id])
    #assuming params
    if @post.update_attributes(params[:post].permit!)
    	@post.save
    	redirect_to posts_path
    else
      #can render differentposts 
      render json: {errors: post.errors}
    end
  end

  def destroy
  	@post = Post.find(params[:id])
  	if @post
  		@post.destroy
      redirect_to posts_path 
  	else
  		render json: {errors: "post does not exist"}
  	end
  end
end
