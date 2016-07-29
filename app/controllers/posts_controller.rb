class PostsController < ApplicationController
  before_action :authenticate_user!
	def index
    if params[:query]
      @posts = Post.search(params[:query])
    else
      @posts = Post.find_by_sql "select * from posts where user_id in(select friend_id from friendships where user_id=#{current_user.id})"

  		# @posts = Post.where(user_id: current_user.id)
      # @posts = Post.joins(:user, :user=>[:friends]).where(friend_id:, current_user.id) 
      # @posts =  Post.where("user_id IN (?)", current_user.friendships);
      # @posts = Post.joins(:user, :user=>[:friendships]).where(user_id)
		end
  end
  
  def new
  	@post = Post.new 
    render 'posts/new'
    # render json: @post 
  end
  def edit
  	@post = Post.find(params[:id])
  end


  def create
    @post= Post.new(post_params)
    @post.user = current_user
    # @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path 
    else
      render :new
    end
  end

  def show
    if params[:query]
      @post = Post.search(params[:query])
    else
      @post = Post.find(params[:id])
      if @post
        render 'show'
      else
        render json: {errors: @post.errors}
      end
    end
  end

  def update
  	@post = Post.find(params[:id])
    #assuming params
    if @post.update_attributes(post_params)
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
  	else
  		render json: {errors: "post does not exist"}
  	end
      redirect_to posts_path
  end
    private

  def post_params
    # params.require(:post).permit!
    params.require(:post).permit(:title,:user_id,:content,:latitude,:longitude,:url)
  end
end
