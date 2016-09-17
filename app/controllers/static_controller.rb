class StaticController < ApplicationController
  def index
  	if current_user
	    if params[:query]
	      @posts = Post.search(params[:query])
	    else
	      @posts = Post.find_by_sql "select * from posts where user_id in(select friend_id from friendships where user_id=#{current_user.id})"
				@hash = Gmaps4rails.build_markers(@posts) do |post, marker|
				  marker.lat post.latitude
				  marker.lng post.longitude
				end
			end
		end
  end
end
