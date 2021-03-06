class ListItemsController < ApplicationController

	before_action :set_list
	before_action :set_list_item, except: [:create, :priority]

	def create
		#must be @list.list_items with an s, due to routes created
		@list_item = @list.list_items.create(list_item_params)
		redirect_to @list
	end

	def complete
		@list_item.update_attribute(:completed_at, Time.now)
		redirect_to @list
	end

	def destroy
		#must be @list_item singular due to routes created
		if @list_item.destroy
			flash[:success] = "Item deleted!"
		else
			flash[:error] = "This item could not be deleted."
		end
		redirect_to @list
	end
	
	private
		#this method matches example, but if you use the same method
		#from the List controller to set the list it doesn't work!!!
		def set_list
			@list = List.find(params[:list_id])
		end

		def set_list_item
			@list_item = @list.list_items.find(params[:id])
		end

		def list_item_params
			params[:list_item].permit(:content, :priority)
		end

end
