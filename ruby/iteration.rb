# WORKING WITH ARRAYS

dev_name = ["Albert", "Derek", "John", "Andrew"]

# array .each demonstration 
dev_name.each do |name|
	p "Good job #{name}!"
	name.chop
end

puts dev_name

# array .map demonstration
dev_name.map! do |name|
	name.chop
end

puts dev_name


# WORKING WITH HASHES
dev_module = {1 => "Git", 2 => "HTML", 3 => "CSS", 4 => "Ruby"}

dev_module.each do |mod, subject|
	p "Week #{mod}: #{subject}"
end

puts dev_module