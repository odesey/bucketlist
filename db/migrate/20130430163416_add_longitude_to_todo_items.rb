class AddLongitudeToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :longitude, :float
  end
end
