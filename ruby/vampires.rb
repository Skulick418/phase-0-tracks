puts "How many employees will be processed?"
amount = gets.chomp.to_i
 
until amount == 0
 	
puts "What is your name?"
input = gets.chomp 
	if input == "Drake Cula" && "Tu Fang"
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

phrase_1 = "sunshine"
phrase_2 = "done"
user_input = ""

until user_input == phrase_1 || user_input == phrase_2

puts "Please list any allergies you have one by one. Type done when finished"
user_input = gets.chomp

end
	
	if user_input == "sunshine"
	allergies = false
	elsif user_input == "done"
	allergies = true
	end
amount -= 1

	if !name 
	puts "Defintely a vampire"
	elsif !allergies 
	puts "Probably a vampire"
	elsif !years  && !food  && !insurance 
		puts "Almost certainly a vampire."
	elsif !years && !(food && insurance) 
		puts "Probably a vampire"
	elsif years && (food || insurance)
	puts "Proably not a vampire"

	else
	puts "Results inconclusive"
	end

	puts "Next employee"

	end 


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





		


