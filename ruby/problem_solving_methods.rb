# Implement simple search
arr = [1,2,3,4,9,5,7,55]

puts "Please select number in array"
no = gets.chomp.to_i

def search_array (arr, no)
answer = arr.each_index.select{|x| no == arr[x]}
  answer
end

p search_array(arr, no)


# Calculate fibonacci numbers
def fibonnaci(num_terms)
  array = []
  index = 0
  # if user puts 0 or negative integer
  while num_terms <= 0
    puts "Please put number greater than 0"
    num_terms = gets.chomp.to_i
  end
  # if user puts num_terms==1
  if num_terms == 1
    array.push(0)
  # main algorithm for fibonacci sequence
  else
    # start off with 0 and 1 in sequence
    array.push(0)
    array.push(1)
    while index != (num_terms - 2)
      # next number would be sum of two previous numbers in sequence
      array.push(array[index] + array[index.next])
      index += 1
    end
  end
  array
end
 

puts "How many terms would you like in your Fibonnaci sequence?"
num_terms = gets.chomp.to_i

p fibonnaci(num_terms)