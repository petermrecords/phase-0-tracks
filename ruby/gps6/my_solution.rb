# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# This will look for a file of the name given in the same directory.
# You will be able to run code from that file in your file as if it were in the same file.
require_relative 'state_data'

class VirusPredictor
  # creates a new instance of the VirusProtector class with values for state, population & density from inputs
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls the 3 private methods to:
  # calculate the number of deaths
  # calculate the speed of spread
  # print them to the console in a sentence
  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread
    print_effects(number_of_deaths, speed)
  end

  private
  # calculates the number of predicted deaths based on population and population density
  # decides a factor based on population density then multiplies that by population and rounds to get answer
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end

    (@population * factor).floor

  end
  # calculates the speed of spread based on population density
  # picks a speed based on the density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    case 
    when @population_density >= 200
      speed = 0.5
    when @population_density >= 150
      speed = 1
    when @population_density >= 100
      speed = 1.5
    when @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    speed

  end
  # arranges the state, number of deaths and speed of spread into a sentence and prints
  # speed of spread and number of deaths is input not calculated in line
  def print_effects(number_of_deaths, speed)
    puts "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, data|
  VirusPredictor.new(state_name, data[:population_density], data[:population]).virus_effects
end

=begin

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#=======================================================================
# Reflection Section

-What are the differences between the two different hash syntaxes shown in the state_data file?

The main "states" hash is written longhand, whereas the "data" hashes use a shorthand for hashes with symbols as keys.

-What does require_relative do? How is it different from require?

require_relative allows you to run code in your file from a separate file in the same directory.  Require I think looks for gems in your library or follows the directory path given.

-What are some ways to iterate through a hash?

.each works for hashes as well as arrays.  Hashes can also use .keys.each to iterate through just the keys or .values.each to iterate through values.

-When refactoring virus_effects, what stood out to you about the variables, if anything?

The variables were named after the thing they were referencing in real life, which helped a lot to keep the semantics of the code straight while working.

-What concept did you most solidify in this challenge?

I was not very familiar with private class methods before this, and the explanation and example of when you would use them was very helpful.