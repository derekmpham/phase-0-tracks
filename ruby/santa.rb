#DEFINE SANTA CLASS
class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa instance ..."
	end

end


#DRIVER CODE
p nicholas = Santa.new
nicholas.speak
nicholas.eat_milk_and_cookies("chocolate chip")