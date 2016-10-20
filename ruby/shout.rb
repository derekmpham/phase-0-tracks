#SHOUT MODULE
module Shout
	
  	#yelling angrily and happily methods
  	# def self.yell_angrily(words)
  	#   words + "!!!" + " :("
  	# end

  	# def self.yelling_happily(words)
  	# 	words + "!!!" + " :D"
  	# end

  def shouting(calling)
  	puts "Hey! #{calling}"
  end

end

#ADD TWO CLASSES THAT USE SHOUT MODULE
class AngryDriver
	include Shout
end

class Friend
	include Shout
end




#DRIVER CODE
	# p Shout.yell_angrily("Hey")
	# p Shout.yelling_happily("Hey")
#driver code for AngryDriver class
truck_driver = AngryDriver.new
truck_driver.shouting("Watch where you're going!")
#driver code for Friend class
jim = Friend.new
jim.shouting("How's it going?!")