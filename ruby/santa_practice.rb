# class Santa 
# 	attr_reader :ethnicity, :age 
# 	attr_accessor :gender 

# 	def initialize(gender, ethnicity)
# 		puts "Initializing Santa Instance"
# 		@gender = gender
# 		@ethnicity = ethnicity 
# 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# 		@age = 0  
# 	end 
	
# 	def speak
# 		puts "Ho, ho, ho! Haaaappy holidays!"

# 	end 

# 	def eat_milk_and_cookies(cookie)
# 		puts "That was a good #{cookie}"
# 	end 

# 	def celebrate_birthday(age)
# 		 @age = age += 1
# 		end 

# 	def get_mad_at(name)
# 		@reindeer_ranking.delete(name)
# 		@reindeer_ranking.push(name)
# 	end 

# 	def new_gender=(choice)
# 		@gender = choice 
# 	end  

# 	# def age 
# 	# 	@age 
# 	# end 

# 	# def ethnicity 
# 	# 	@ethnicity 
# 	# end 	



		 
# 	end 

# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# 5.times do |pointer| 
# 	santa_instance = Santa.new(example_genders.sample, example_ethnicities.sample)
# 	santa_instance.speak 
# 	santa_instance.celebrate_birthday(rand(139))
# 	p santa_instance 

# end 



# santa = Santa.new("Alien", "Multicolor") 
# p santa.age
# p santa.celebrate_birthday(5)
# p santa.get_mad_at("Vixen")
# p santa.new_gender=("Male")


# puts santa.speak 
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#  p santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

class Santa 
	def initialize 
		@name = name 
		

	def name 
