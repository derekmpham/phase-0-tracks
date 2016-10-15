# Implement simple search
# arr = [14, 73, 5, 85, 21]

# def search_array()
	 # string.each_index {|x| p x }
# end	
# p search_array(arr)


# Calculate fibonacci numbers
def fibonnaci(num_terms)
	# create an array
	array = []
	index = 0
	until num_terms > 0
		puts "Please put number greater than 0"
		num_terms = gets.chomp.to_i
	end
	if num_terms == 1
		array.push(0)
	else
		array.push(0)
		array.push(1)
		until index == (num_terms - 2)
			array.push(array[index] + array[index.next])
			p index
			index += 1
		end
	end
	array
end

puts "How many terms would you like to have in your Fibonnaci sequence?"
num_terms = gets.chomp.to_i

p fibonnaci(num_terms)