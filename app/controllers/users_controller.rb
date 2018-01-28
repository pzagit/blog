class UsersController < ApplicationController
	def signup
	end

	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all 
	end

	def create
		@user = User.new(user_params)
		@users = User.new
		
		if(@user.save)
			redirect_to @users
		else
			render 'new'
		end
	end

	def new
		@user = User.new
	end

	private def user_params
		params.require(:user).permit(:username, :email, :password)
	end
end
