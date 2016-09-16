# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# pulls the data from a connected file
# require_relative is more local than require
#
require_relative 'state_data'

class VirusPredictor

# It initalizes the data and sets the conditions and turns 
#the parameters into instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calling existing methods and using initalized data

  def virus_effects 
    predicted_deaths
    speed_of_spread

  end

  private

# create if statement setting values for the number of deaths
# prints how many deaths per state if an outbreeak occurs
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
     value = 0.4
    elsif @population_density >= 150
      value = 0.3
    elsif @population_density >= 100
      value = 0.2
    elsif @population_density >= 50
      value = 0.1
    else
      value = 0.05
    end
    number_of_deaths = (@population * value).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # if statement that based on the population density the spead 
  #of which the our break will spread

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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do|state, population_info|

     state_test = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
             state_test.virus_effects
end
         
#=======================================================================
# Reflection Section



# # Virus Predictor

# # I worked on this challenge [by myself, with: Alex Carroll ].
# # We spent [#] hours on this challenge.

# # EXPLANATION OF require_relative
# # require is for any file that is on your system accessible in your load path
# # require relative is from the current dir down of the file that required it.

# require_relative 'state_data'

# class VirusPredictor
#   # Sets the default values based upon the passed parameters
#   def initialize(state_of_origin, population_density, population)
#   @state = state_of_origin
#   @population = population
#   @population_density = population_density
#   end
#   # Returns the output of the 2 methods it runs
#   def virus_effects
#   predicted_deaths
#   speed_of_spread
#   end

#   private
#   def calc_for_methods(set_of_values)
#   if @population_density >= 200
#   set_of_values[0]
#   elsif @population_density >= 150
#   set_of_values[1]
#   elsif @population_density >= 100
#   set_of_values[2]
#   elsif @population_density >= 50
#   set_of_values[3]
#   else
#   set_of_values[4]
#   end
#   end
#   # Calculates the percentage deaths based on population density
#   def predicted_deaths
#   # predicted deaths is solely based on population density
#   number_of_deaths = (@population * calc_for_methods([0.4, 0.3, 0.2, 0.1, 0.05])).floor
#   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
#   # Rate of speed is calculated based on pop density.
#   def speed_of_spread #in months
#   # We are still perfecting our formula here. The speed is also affected
#   # by additional factors we haven't added into this functionality.
#   speed = calc_for_methods([0.5, 1.0, 1.5, 2.0, 2.5])
#   puts " and will spread across the state in #{speed} months.\n\n"
#   end

# end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state
# STATE_DATA.each do |state_name, population_info|
#   test_state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
#   test_state.virus_effects
# end 