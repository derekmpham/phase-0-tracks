# Prompt designer/user for required info
puts "Name:"
client_name = gets.chomp

puts "Age:"
client_age = gets.chomp

puts "Number of children:"
number_of_children = gets.chomp

puts "Decor theme:"
decor_theme = gets.chomp

puts "Favorite color:"
fav_color = gets.chomp

puts "TV (y or n):"
tv = gets.chomp
	if tv == "y" || tv == "yes"
		tv = true
	end
	if tv == "n" || tv == "no"
		tv = false
	end


# Store designer/user input into hash
unique_pref = {
	name: client_name,
	age: client_age.to_i,
	children: number_of_children.to_i,
	theme: decor_theme,
	color: fav_color,
	wants_tv: tv
}

puts unique_pref


# Give user opportunity to update key
if client_name == "Name"
	puts "Are you sure that's the client's name? 'None' is a valid answer"
	unique_pref[:name] = gets.chomp
end

if unique_pref[:age] <= 0 
	puts "Are you sure that's the client's age? 'None' is a valid answer"
	unique_pref[:age] = gets.chomp.to_i
		if unique_pref[:age] <= 0
			unique_pref[:age] = nil
		end
end

if unique_pref[:children] <= 0
	puts "Are you sure that's the number of children the client has? 'None' is a valid answer"
	unique_pref[:children] = gets.chomp.to_i
		if unique_pref[:children] < 0
			unique_pref[:children] = nil
		end
		if unique_pref[:children] == 0
			unique_pref[:children] = 0
		end		
end

if decor_theme == "Decor theme"
	puts "Are you sure that's the decor theme the client wants? 'None' is a valid answer"
	unique_pref[:theme] = gets.chomp
end

if fav_color == "Favorite color"
	puts "Are you sure that's your client's favorite color? 'None' is a valid answer"
	unique_pref[:color] = gets.chomp
end

if tv == "TV" || tv == "maybe"
	puts "Are you sure that's client's TV preference? Please answer 'y' if the client wants a TV, and 'n' if the client doesn't want a TV. 'None' is also a valid answer"
	unique_pref[:wants_tv] = gets.chomp
		if unique_pref[:wants_tv] == "TV" || unique_pref[:wants_tv] == "y" || unique_pref[:wants_tv] == "yes"
			unique_pref[:wants_tv] = true
		else
			unique_pref[:wants_tv] = false
		end
end


# Print latest version of hash and exit program
puts unique_pref
exit