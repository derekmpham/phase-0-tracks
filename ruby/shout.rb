#SHOUT MODULE
module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!!" + " :D"
  end

end



#DRIVER CODE
p Shout.yell_angrily("Hey")
p Shout.yelling_happily("Hey")