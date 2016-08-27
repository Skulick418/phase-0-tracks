# Virus Predictor

# I worked on this challenge [by myself, with: Alex Carroll ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require is for any file that is on your system accessible in your load path
# require relative is from the current dir down of the file that required it.

require_relative 'state_data'

class VirusPredictor
  # Sets the default values based upon the passed parameters
  def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density
  end
  # Returns the output of the 2 methods it runs
  def virus_effects
  predicted_deaths
  speed_of_spread
  end

  private
  def calc_for_methods(set_of_values)
  if @population_density >= 200
  set_of_values[0]
  elsif @population_density >= 150
  set_of_values[1]
  elsif @population_density >= 100
  set_of_values[2]
  elsif @population_density >= 50
  set_of_values[3]
  else
  set_of_values[4]
  end
  end
  # Calculates the percentage deaths based on population density
  def predicted_deaths
  # predicted deaths is solely based on population density
  number_of_deaths = (@population * calc_for_methods([0.4, 0.3, 0.2, 0.1, 0.05])).floor
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Rate of speed is calculated based on pop density.
  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  speed = calc_for_methods([0.5, 1.0, 1.5, 2.0, 2.5])
  puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, STATE_DATA[st