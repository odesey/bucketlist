class TodoItemsController < ApplicationController
	def index
		@items = TodoItem.all
		# binding.pry
	end

	def show
		@item = TodoItem.find(params[:id])
	end
end
