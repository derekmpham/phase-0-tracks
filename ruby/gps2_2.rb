# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into words
  # => (add a number) --> for each word/individual string --> iterate over an array of words and add each one to a hash
  # print the list to the console --> simple print method works fine
# output: [hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps: push item name and optional quantity to existing hash
# output: print updated list

# Method to remove an item from the list
# input: existing item name and quantity
# steps: remove existing item and quantity --> there's probably an existing method
# output: print updated list

# Method to update the quantity of an item
# input: new quantity of existing item
# steps: update or change quantity of item already on list
# output: print updated list

# Method to print a list and make it look pretty
# input: may not have input since no user interface
# steps: iterate through our list (hash)
# output: print out each item and respective quantity on list


# Method 1: create a list
def create_list(items)
	grocery_hash = {}
	split_items = items.split(' ')
	split_items.each do |item|
		grocery_hash[item] = 1
	end
	p grocery_hash
end

g_list = create_list("carrots apples cereal pizza")


# Method 2: add item
def add_item(list, item_name, quantity = 1)
	list[item_name] = quantity
	p list
end

add_item(g_list, "bananas", 2)


# Method 3: remove item
def remove_item(list, item_name)
	list.delete(item_name)
	p list
end

remove_item(g_list, "carrots")


# Method 4: update quantity of item
def quant_update(list, item_name, quantity)
	list[item_name] = quantity
	p list
end

quant_update(g_list, "apples", 5)


# Method 5: print everything
def pretty_hash(list)
	list.each do |item, quantity|
		p "#{item}: #{quantity}"
	end
end

pretty_hash(g_list)