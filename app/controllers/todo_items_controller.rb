class TodoItemsController < ApplicationController


	def index
		@items = TodoItem.all
		# binding.pry
	end

	def create
		binding.pry
		@item = TodoItem.new(params[:todo_item])
		@item.save!
		render :template => 'todo_items/create', :locals=> { :todo_item => @todo_item }, :content_type => 'text/javascript'
	end


	def show
		@item = TodoItem.find(params[:id])
	end

	def like
		binding.pry
		render :nothing => true
	end

end
