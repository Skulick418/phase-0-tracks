#Create new hash
client_form = {}

	#Driver code
	puts "Please enter client's name."
	client_form[:name_input] = gets.chomp #Made user input new data in hash's array.

	puts "Please enter the client's age."
	client_form[:age_input] = gets.chomp.to_i

	puts "Please enter the chosen theme"
	client_form[:theme_input] = gets.chomp

	puts "Please enter the amount of children client has"
	client_form[:children_input] = gets.chomp

	# Create loop until boolean variable is met
		valid_input = false
		until valid_input

			puts "Please enter if fish tank will be installed (y/n)"
			client_form[:fish_input] = gets.chomp.downcase
				if client_form[:fish_input] == "y"
					client_form[:fish_input] = true
					valid_input = true
				elsif client_form[:fish_input] == "n"
					client_form[:fish_input] = false
					valid_input = true
				else
					puts "please enter y or n case senesitive."
					valid_input = false
				end
		end
		valid_input = false
		until valid_input
			puts "Please enter if this member is a vip (y/n)"
			client_form[:vip_input] = gets.chomp.downcase
				if client_form[:vip_input] == "y"
					client_form[:vip_input] = true
					valid_input = true
				elsif client_form[:vip_input] == "n"
					client_form[:vip_input] = false
					valid_input = true
				else
					puts "please enter y or n case sensitive"
					valid_input = false
				end
		end
	puts "Please enter clients budget, no symbols"
	client_form[:budget_input] = gets.chomp.to_i


