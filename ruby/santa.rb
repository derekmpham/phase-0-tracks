#SANTA CLASS
class Santa
	
	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def reindeer_ranking
		p @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def age
		p @age = 0
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays! I'm a #{@ethnicity} #{@gender} santa"
	end

	def eat_milk_and_cookies (cookie_type)
		p "That was a good #{cookie_type} cookie!"
	end

end




#DRIVER CODE
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicities[i])
end

santas[1].speak