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
fish_tank_input = gets.chomp.downcase 
	if fish_tank_input == "yes"
		list[:fish_tank] = true 
	elsif fish_tank_input == "no"
		list[:fish_tank] = false 
	else 
		puts "Please type in yes or no."
	end 


