class UsersController < ApplicationController 
	def new 
		@user = User.new
	end 

	def show 
		@user = User.find(params[:id])
		@items = @user.items
	end 

	def create
  		@user = User.create(user_params)
  		redirect_to "items/"
	end

	def edit 
	end 

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	 	params.require(:user).permit(:first_name, :last_name, :user_name, :avatar)
	end
end 