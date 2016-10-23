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
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie_type)
		p "That was a good #{cookie_type} cookie!"
	end

end




#DRIVER CODE
nick = Santa.new("male", "Vietnamese")
nick.speak
nick.eat_milk_and_cookies("chocolate chip")
nick.reindeer_ranking
nick.age