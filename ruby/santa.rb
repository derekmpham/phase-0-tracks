#SANTA CLASS
class Santa
	
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		shifted_reindeer = @reindeer_ranking.delete(reindeer)
		@reindeer_ranking << shifted_reindeer
		@reindeer_ranking
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays! I'm a #{@age} year-old #{@ethnicity} #{@gender} santa"
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

santas[1].speak #-->expect "Ho, ho, ho! Haaaappy holidays! I'm a 0 year-old female Latino santa"
santas[1].age
santas[1].ethnicity
santas[1].celebrate_birthday
santas[1].gender = "shemale"
santas[1].speak #-->expect "Ho, ho, ho! Haaaappy holidays! I'm a 1 year-old shemale Latino santa"
santas[1].get_mad_at("Rudolph")
santas[1].reindeer_ranking