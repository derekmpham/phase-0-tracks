#SANTA CLASS
class Santa
	def speak
		puts "#Ho, ho, ho! Haaaappy holidays! I am a #{@gender} #{@ethnicity} Santa! I am #{@age} years old."
	end

	def eat_milk_and_cookies(cookie)
		puts "#{@reindeer_ranking[0]} says, 'That was a good #{cookie}!'"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
end

#create new array, and add two arrays inside
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#insert santas (including its genders and ethnicities arrays) array into Santa class
genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicities[i])
end




#DRIVER CODE

#initial test: add new instance titled "nicole"
p nicole = Santa.new("female", "Italian")
nicole.speak
nicole.eat_milk_and_cookies("chocolate chip")

#Have each item (a.k.a. individual santas) in santas array "speak"
santas.each do |i|
	i.speak
end