 	



	puts "What is your name?"
	input = gets.chomp 
		
	if input == "Drake Cula" || "Tu Fang"
		name = false
	else 
		name = true
	end
	
	puts "How old are you? What year were you born?"
	input = gets.chomp

	if input == 0 
		years = false
	else
		years = true
	end


	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
	input = gets.chomp 

	if input == "Y"
		food = true
	elsif input == "N"
		food = false
	else
		puts "Please respond Y or N, case sensitive."
	end

	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	input = gets.chomp

	if input == "Y"
		insurance = true
	elsif input == "N"
		insurance = false
	else 
		puts "Please respond Y or N, case sensitive"
	end

secret_word = "sunshine"
user_input = ""
while user_input !=secret_word 
	puts "Do you have any allergies? Type done when finished"
	user_input = gets.chomp

	
	if user_input == "sunshine"
		allergies = false
	else
		allergies = true
	end

end 




	






	


	
	if years && (food || insurance)
		puts "Proably not a vampire"
	elsif !years && !(food || insurance)
		puts "Probably a vampire"
	elsif !years  && !food  && !insurance 
		puts "Almost certainly a vampire."
	elsif !name 
		puts "Definitely a vampire."
	elsif !allergies 
		"Probably a vampire."
	else
		puts "Results inconclusive"
	end 



	



puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





		


