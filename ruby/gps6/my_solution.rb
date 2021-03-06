# Virus Predictor

# I worked on this challenge [by myself].
# We spent [.75] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative makes the file required available to the file you are working in.
#
require_relative 'state_data'

class VirusPredictor
#initialize a VirusPredictor object and set state_of_origin, population_density and population instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

 
# makes calls to the predicted_deaths and speed_of_spread methods to print out effects about a particular virus.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private
# takes in data about a state and uses population_density and population to predict the number_of_deaths and prints a statement
  def predicted_deaths
    # predicted deaths is solely based on population density
    death_quotient = 1
    if @population_density >= 200
      death_quotient = 0.4
    elsif @population_density >= 150
      death_quotient = 0.3
    elsif @population_density >= 100
      death_quotient = 0.2
    elsif @population_density >= 50
      death_quotient = 0.1
    else
      death_quotient = 0.05
    end

    number_of_deaths = (@population * death_quotient).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# takes in data about a state and uses population_density to predict spped of spread and prints out a statment
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#puts STATE_DATA["Alabama"][:population_density]

STATE_DATA.each do |state, pop_hash|
  virus = VirusPredictor.new(state, pop_hash[:population_density], pop_hash[:population])
  virus.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# the two hash syntaxes used were => vs symbol: value. the => can be used with symbols, but can also be used with other objects. the symbol: makes the key a symbol.
# require_relative finds a file in the same directory. require would need more data about the full path of a the file, so require_relative is a bit of a shortcut when using files in the same directory or close enough to access with ../ and the like
# in this challenge i used a .each loop to iterate through a hash. i suppose another loop like a for loop could be used, but .each works really nicely for these kinds of things.
# in the virus_effects methods, the parameters passed in were never used! that was tricky, as they were named the same as the instance variables.
# I was a bit rusty accessing nested data in a structure, so it was good to revisit that. mostly, I gained familiarity with classes and instance variables, and keys to look for when trying to keep things DRY.
