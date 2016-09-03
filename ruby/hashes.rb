#PSEUDOCODE
# Creating a program that asks what the input is, inserts that input into a hash, and then allows for updates.
	#Ask for user information, set userinformation as value for key variable we will create
		# gets.chomp will be equal to hash_name[:key_name]
	#Create loop that will break if the answer returned is done.
		#Otherwise the user will put in a keyword that will go to a key that will lead to an update.
			# Have new answer be equal to the value of the existing key 
	# End program

list = Hash.new 

puts "Welcome to the interior design manipulator 3000!"
puts "Please, let's begin...."

puts "Please tell me the client's full name (first name, last name)"
list[:name] = gets.chomp.to_s 

puts "Please tell me the client's age"
list[:age] = gets.chomp.to_i 

puts "Please tell me the amount of children the client has"
list[:child_amount] = gets.chomp.to_i

puts "Please tell me if a fish tank will be added (yes/no)"
fish_tank_input = gets.chomp.downcase.to_s 
until list[:fish_tank] == true || list[:fish_tank] == false
	if fish_tank_input == "yes"
		list[:fish_tank] = true 
	elsif fish_tank_input == "no"
		list[:fish_tank] = false 
	else 
		puts "Please type in yes or no."
		fish_tank_input = gets.chomp.downcase
	end 
end 

puts "Please tell me the decor theme"
list[:decor_theme] = gets.chomp.to_s

#UPDATER 

puts "Would you like to update anything from the above list? (name, age, child_amount, fish_tank, decor_theme, or none to exit"
answer = gets.chomp.downcase
 if answer != "none"
 	answer = answer.to_sym
 	puts "Please type in the changed information"
 	if answer == :age 
 		new_value = gets.chomp.to_i
 	
 	elsif answer == :child_amount
 		new_value = gets.chomp.to_i
 	
 	elsif answer == :fish_tank
 		puts "Will a fish tank be added?"
 		new_value = gets.chomp.downcase 
 		until new_value == true || new_value == false
 			if new_value == "yes"
				new_value = true 
			elsif new_value == "no"
			new_value = false 
			else 
			puts "Please type in yes or no."
			new_value = gets.chomp.downcase
			end
		end 
	else 
 		new_value = gets.chomp 
 	end 
 	new_value = answer
 	list[new_value]
 	# list[answer] = new_value 
 end 

 p list 
 puts "Goodbye!"


