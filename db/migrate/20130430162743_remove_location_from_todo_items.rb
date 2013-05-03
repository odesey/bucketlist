class RemoveLocationFromTodoItems < ActiveRecord::Migration
	def change
		remove_column :Todo_Items, :longitued
	end

end
