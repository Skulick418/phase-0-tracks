class Santa 
	attr_reader :age, :ethnicity 
	attr_accessor :gender, :age  

	def initialize(gender, ethnicity) 
		puts  "Initializing Santa instance ..."
		@gender = gender 
		@ethnicity = ethnicity 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end 
	
	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end 

	def celebrate_birthday
		@age = @age + 1
	end 

	def get_mad_at(name)
	    @reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
	end 

	def gender=(new_gender)
		@gender = new_gender 
	end 

	# def age 
	# 	@age 
	# end 

	# def ethnicity 
	# 	@ethnicity 
	# end 





end 

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

5.times do |x|
santa_case_number = x + 1
puts "This is santa #{santa_case_number}"
santa = Santa.new(example_genders.sample, example_ethnicities.sample)
santa.age = rand(140) 
p santa 
end 

# santa = Santa.new("Male", "Alien") 
# puts santa.celebrate_birthday
# puts santa.celebrate_birthday
# puts santa.get_mad_at("Vixen")
# santa.gender = "Female" 
# p santa 
# santa.speak 
# santa.eat_milk_and_cookies("oreo")
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# p santas 
# end





