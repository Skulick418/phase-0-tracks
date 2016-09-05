class Santa
	attr_reader :ethnicity, :age 
	attr_accessor :gender 

	def initialize(gender, ethnicity)
		puts "Initializing Santa Instance"
		@gender = gender 
		@ethnicity = ethnicity 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end 

	def celebrate_birthday(age)
		@age = age + 1 
	end
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end 
	
	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good type of #{cookie}"
	end 


end 

santa = Santa.new("Female", "White")
# p santa
# santa.gender = "Male"
# p santa 
# p santa.speak
# p santa.eat_milk_and_cookies("Choclate Chip")
p santa.get_mad_at("Vixen")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

20.times do |x|
	puts "Santa number #{x + 1}"
	santa_1 = Santa.new(example_genders.sample, example_ethnicities.sample)
	p santa_1
	p santa_1.celebrate_birthday(rand(140))
end 
# class Santa
# attr_reader :ethnicity, :age 
# attr_accessor :gender  

# 	def initialize (gender, ethnicity)
# 		puts "Initalizing Santa instance"
# 		@gender = gender 
# 		@ethnicity = ethnicity 
# 		@age = 0 
# 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# 	end 

# 	def speak 
# 		puts  "Ho, ho, ho! Haaaappy holidays!"
# 	end 

# 	def eat_milk_and_cookies(cookie_type)
# 		puts "That was a good #{cookie_tyoe}"
# 	end 

# 	def reindeer_rank(reindeer_name)
# 		reindeer_ranking
# 	end 
	
# 	def celebrate_birthday(age)
# 		@age = age + 1 
# 		# puts "Santa used to be #{age} but now he is #{@age}"
# 	end 

# 	# def get_mad_at(reinder_name)
# 	# 	reinder_ranking = @reinder_ranking 
# 	# 	reinder_ranking[reinder_ranking.index(reinder_name)] = nil
# 	# 	reinder_ranking.compact!
# 	# 	reinder_ranking.push(reinder_name) 
# 	# end

# 	def get_mad_at=(reindeer_name)
# 		@reindeer_ranking.delete(reindeer_name)
# 		@reindeer_ranking.push(reindeer_name)
# 	end 

# 	def gender_change=(new_gender) 
# 		@gender = new_gender
# 	end 

# 	# def ethnicity 
# 	# 	@ethnicity 
# 	# end 

# 	# def age 
# 	# 	@age 
# 	# end 
# end

# santa_gender = ["female", "male", "bigender", "undecidied", "gorflon (alien male)", "garflan (alien female)"]
# santa_ethnicities = ["agender", "black","white", "chinese", "japanese","none given", "alien"]

# 20.times do |santa_instance|
# 	santa_number = santa_instance + 1
# 	puts "Santa number #{santa_number}"
# 	new_santa = Santa.new(santa_gender.sample, santa_ethnicities.sample)
# 	new_santa.celebrate_birthday(rand(140))
# 	p new_santa
# end
# new_santa2 = Santa.new('male',"chinese")
# 	new_santa2.get_mad_at = "Dancer"
# 	p new_santa2
# santas = []
# puts santas << Santa.new("agender", "black")

# santa1 = Santa.new("male", "white")
# santa1.celebrate_birthday(20)
# age = santa1.celebrate_birthday(20)
# puts "Santa is now #{age}"

 

# santa1.get_mad_at = "Vixen"
# p santa1

# santa1.gender_change = "Unicorn"


# p santa1




