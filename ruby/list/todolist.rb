class Todolist

	def initialize
		@todo_list = ["do the dishes", "mow the lawn"]
	end

	def get_items
		p @todo_list
	end

	def add_item(item)
		@todo_list << item
	end

	def delete_item(item)
		@todo_list.delete(item)
	end

end




#DRIVER CODE
p list = Todolist.new
list.delete_item("do the dishes")
list.get_items