class Santa 

	def initialize (gender, ethnicity)
		puts "Initalizing Santa instance"
		@gender = gender 
		@ethnicity = ethnicity 
		@age = 0 
		@reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end 

	def speak 
		puts  "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_tyoe}"
	end 

	def reindeer_rank(reindeer_name)
		reindeer_ranking
	end 
	
	def celebrate_birthday(age)
		@age = age + 1 
end


