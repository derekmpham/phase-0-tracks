class TodoList

	def initialize(chores)
		@todo_list = chores
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

	def get_item(index)
		@todo_list[index]
	end

end