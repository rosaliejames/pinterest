class ItemsController < ApplicationController 
	def index
		@items = Item.all
	end 

	def new 
		@item = Item.new
	end 

	def create 
		@item = Item.create( item_params)
		redirect_to '/items/'
	end 

	def delete 
		@item = Item.find(params[:id])
		@item.delete
		redirect_to '/items/'
	end 

		private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def item_params
	 	params.require(:item).permit(:name, :user_id)
	end
end 