class Santa 

	def initialize (gender, ethnicity)
		puts "Initalizing Santa instance"
		@gender = gender 
		@ethnicity = ethnicity 
		@age = 0 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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
		# puts "Santa used to be #{age} but now he is #{@age}"
	end 

	# def get_mad_at(reinder_name)
	# 	reinder_ranking = @reinder_ranking 
	# 	reinder_ranking[reinder_ranking.index(reinder_name)] = nil
	# 	reinder_ranking.compact!
	# 	reinder_ranking.push(reinder_name) 
	# end

	def get_mad_at=(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end 

	def gender_change=(new_gender) 
		@gender = new_gender
	end 

	def ethnicity 
		@ethnicity 
	end 
end



santas = []
puts santas << Santa.new("agender", "black")

santa1 = Santa.new("male", "white")
santa1.celebrate_birthday(20)
age = santa1.celebrate_birthday(20)
puts "Santa is now #{age}"

 

santa1.get_mad_at = "Vixen"
p santa1

santa1.gender_change = "Unicorn"


p santa1




