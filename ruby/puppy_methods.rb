#define class Puppy
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak (number)
    number.times do puts "Woof!" end
    number
  end

  def roll_over 
    puts '*rolls over*'
  end
  
  def dog_sit 
    puts '*sit*'
  end
  
  def dog_year_conversion (human_years)
    dog_years = human_years * 7 
    puts dog_years
  end
 
 def initialize
  puts "Initializing new puppy instance ..."
 end
  
end


#making our own Kitten class
class Kitten
#methods for Kitten class 
  def initialize
    puts "Initializing new kitten production ..."
  end

  def yawn 
    puts "*purrrrr yawn*"
  end
  
  def meow 
    puts '*meow*'
  end


end

#create array to store instances in (array) data structure
kitten_group = []
#create loop to make 50 instances of Kitten class
while kitten_group.length <= 50
  kitten_name = Kitten.new 
  kitten_group.push kitten_name
end




#### Test Codes ##############

##Test codes for Puppy class
p john = Puppy.new 

john.fetch('batman')
john.dog_year_conversion (4)
john.roll_over
john.dog_sit
john.speak(5)


##Test codes for Kitten class

#show that instances are stored in (array) data structure
p kitten_group

#make each item in array use methods from kitten class
kitten_group.each do |kitten| 
  kitten.yawn
  kitten.meow
end