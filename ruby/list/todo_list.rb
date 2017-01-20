=begin

-stores items given on initializations
-add items to list
-deletes item
-retrieve an item by index	
	
=end

class TodoList
	def initialize(stuff)
		@items = stuff
	end

	def get_items
		@items.each { |item| puts item }
	end

	def add_item(item)
		@items << item
	end

	def delete_item(item)
		@items.delete_if { |i| i == item }
	end

	def get_item(index)
		@items[index]
	end

end
