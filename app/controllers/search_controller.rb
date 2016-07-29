class SearchController < ApplicationController
  def search
    if params[:query].nil?
      @posts = []
    else
      @posts = Post.search params[:query]
    end
  end
end
	