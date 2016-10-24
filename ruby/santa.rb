#SANTA CLASS
class Santa
	#use attr_reader as shortcut to adding getter methods
	attr_reader :ethnicity, :reindeer_ranking
	#use attr_accessor as shortcut to adding (simple?) setter methods
	attr_accessor :gender, :age
	def speak
		puts "#Ho, ho, ho! Haaaappy holidays! I am a #{@gender} #{@ethnicity} Santa! I am #{@age} years old."
	end

	def eat_milk_and_cookies(cookie)
		puts "#{@reindeer_ranking[0]} says, 'That was a good #{cookie} cookie!'"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	#remaining setter methods
	#add 1 to age
	def celebrate_birthday
		@age += 1
	end

	#move the ranking of the selected reindeer to last --> other reindeers' rankings would be pushed forward
	def get_mad_at=(reindeer)
		#delete selected reindeer from list will automatically have other reindeers' rankings pushed foward
		#having deleted reindeer equate to new variable will allow us to store/remember deleted reindeer and therefore allow us to call/summon deleted reindeer again
		shifted_reindeer = @reindeer_ranking.delete(reindeer)
		#add deleted reindeer to @reindeer_ranking array --> newly added deleted reindeer will automatically be placed at end of array
		@reindeer_ranking << shifted_reindeer
		#print our new ranking
		@reindeer_ranking
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

#build many santas
#add fav_cookie options array
fav_cookie = ["chocolate chip", "peanut butter", "oatmeal raisins", "sugar"]
#add reindeer_names options array
reindeer_names = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

#set up creation of 50 random santas
#initiate iteration
i = 0
#our iteration includes driver code for adding 50 random santas
while i < 50
	many_santas = Santa.new(genders.sample, ethnicities.sample)
	many_santas.age = rand(140)
	many_santas.speak
	many_santas.eat_milk_and_cookies(fav_cookie.sample)
	many_santas.get_mad_at = (reindeer_names.sample)
	puts "Santa is mad at #{many_santas.reindeer_ranking.last}"
	i += 1
end




#DRIVER CODE

#initial test: add new instance titled "nicole"
p nicole = Santa.new("female", "Italian")

#test setter and getter methods
nicole.celebrate_birthday
nicole.gender = "male"
#show that our celebrate_birthday and gender setter methods work
nicole.speak
#show that we can call our age and ethnicity (getter) methods outside of Santa class
puts "To recap, Nicole is now #{nicole.age} years old, and she is #{nicole.ethnicity}"
#have Rudolph placed last in reindeer_ranking (under nicole instance) 
nicole.get_mad_at = "Rudolph"
#run eat_milk_and_cookies method to show Rudolph is not ranked #1 any more
nicole.eat_milk_and_cookies("chocolate chip")
#print last item in reindeer_ranking to show that Rudolph is now last in ranking
puts "Nicole is mad at #{nicole.reindeer_ranking.last}"

#Have each item (a.k.a. individual santas) in santas array "speak"
santas.each do |i|
	i.speak
end
