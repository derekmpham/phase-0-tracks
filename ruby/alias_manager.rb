# GET REAL NAME FROM USER
puts "Please put your real first and last name"
real_name = gets.chomp.to_s

# SWAP FIRST AND LAST NAME

# split string into array of words
make_name_array = real_name.split(' ')

# reverse order list and bring items together to get swapped first and last names
swapped_name = make_name_array.reverse.join(' ')


# CHANGE ALL VOWELS IN NAME

