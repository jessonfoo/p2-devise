class UsersController < ApplicationController
	def index
		if current_user
			@user = current_user
		end
		before_action authenticate_user!
		redirect_to root_path
	end
	def show
	end
	def edit
	end
end

