# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #-->links the state_data file with this file (specifically, we can input data from the state_data file so we don't have to repeat ourselves)-->require allows you to bring in data from files that aren't in the same directory

class VirusPredictor

  #creates new instance of the VirusPredictor class (by passing on state, population, and population density info)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls upon the predicted_deaths and speed_of_spread methods-->specifically prints out and calculates predicted deaths and the speed of the disease spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #-->used to limit visibility of certain methods (makes all methods below it private)

  #predicts the number of deaths based on population density and population by state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplyer = 0.4
    elsif @population_density >= 150
      multiplyer = 0.3
    elsif @population_density >= 100
      multiplyer = 0.2
    elsif @population_density >= 50
      multiplyer = 0.1
    else
      multiplyer = 0.05
    end
    number_of_deaths = (@population * multiplyer).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  #predicts how fast the disease spreads across a given state based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, state_info|
  state_name = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
  state_name.virus_effects
end


#=======================================================================

# Reflection Section
# In the state_data file, the state names (string) serves as a key that refers to the state info (value). And within the state info, the labels population_density and population serve as keys that refer to their descriptions/value (stats/integers). Therefore, the state info is a "hash within a hash".
# require_relative links a file with another file that is within the same directory. On the other hand, require links a file with another file that is not necessarily within the same directory.
# We can iterate through a hash via the .each method where we put key and value as parameters. However, if we are dealing with "hashes within hashes," we have to include the keys of the inner hash when inputing parameters during our new instance declaration.
# What stood out to me while refactoring virus_effects was that the method seemed repetitive such that parameters and instance variables were labeled when they did not need to be.
# The concept that I most solidified was working with hashes, because we did not have to work as much with hashes in our previous challenges--we mostly dealth with arrays. I was especially glad to have learned how to access inner hashes when writing iterations.