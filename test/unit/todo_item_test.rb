require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
	
	context "A todo item" do
		setup do
			@todo_item = TodoItem.create(:name => "Drink a pickleback", :location => "618 Grand St.")
		end

		should "put values in the latitude and longitude" do
			assert_not_nil @todo_item.latitude
			assert_not_nil @todo_item.longitude
		end

	end
end
