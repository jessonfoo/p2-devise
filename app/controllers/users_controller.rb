class UsersController < ApplicationController
before_action :authenticate_user!	
	def index
		# if current_user
		@users = User.all
		# @user = User.find(current_user.id)
		# redirect_to user_profile_path @user

			# before_action :authenticate_user!
			# redirect_to root_path
  end

	def show
		@user = User.find(params[:id])

		# if @user
		# 	# render 'index'
		# 	# render 'show'
		# else
		# 	render json: {errors: @user.errors}	
		# end
        # format.html { render :new }
        # format.json { render json: @friendship.errors, status: :unprocessable_entity }
		# redirect_to root_path
	end
	# def edit

 #  end

 #  def update
 #  end

	# def destroy
 #  end

end

