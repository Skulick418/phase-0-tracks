#PSEUDOCODE
	#Set up new hash to store information labeled client_form
	# Set up driver code asking user for client information
		# Use puts statements convert user information into the array using array = gets.chomp
	#Print information given using a hash
	# Ask user if they would like to update infromation
		# If user enters yes allow user to choose what they would like to update, then allow them to update it.
		# If user enters none exit out of update program
	# Print updated version of client information
	# END




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
			tank = gets.chomp.downcase
				if tank == "y"
					tank = true
					valid_input = true
				elsif tank == "n"
					tank = false
					valid_input = true
				else
					puts "please enter y or n case senesitive."
					valid_input = false
				end

		end
	client_form[:fish_input] = tank
		
		valid_input = false
		until valid_input
			puts "Please enter if this member is a vip (y/n)"
			vip = gets.chomp.downcase
				if vip = "y"
					vip = true
					valid_input = true
				elsif vip == "n"
					vip = false
					valid_input = true
				else
					puts "please enter y or n case sensitive"
					valid_input = false
				end
			
		end
	client_form[:vip] = vip
	
	puts "Please enter clients budget, no symbols"
	client_form[:budget_input] = gets.chomp.to_i

	#Print hash/client form on to the screen
	p client_form
 
	#Code that allows user to update 

	puts "Update sequence initated. Would you like to update any of the clients information? (yes/none)"
	update_choice = gets.chomp.downcase
		if update_choice == "yes"
			puts "Please select which you would like to update. (Name, Age, Child Amount, Theme, Fish Tank, VIP Status, Budget.)"
			update_choice = gets.chomp.downcase
				if update_choice == "name"
					puts "Please enter updated client name."
					update_choice = gets.chomp
					client_form[:name_input] = update_choice
				elsif update_choice == "age"
					puts "Please enter updated age for client:"
					update_choice = gets.chomp.to_i
					client_form[:age_input] = update_choice
				elsif update_choice == "child amount"
					puts "Please enter the updated number of children"
					update_choice = gets.chomp.to_i
					client_form[:children_input] = update_choice
				elsif update_choice == "fish tank"
						puts "Please update fish tank preference (y/n)."
						update_choice = gets.chomp.downcase
							if update_choice == "y"
								tank = true
								client_form[:fish_input] = tank
								
							elsif update_choice == "n"
								tank = false
								client_form[:fish_input] = tank
								
							end
					
				elsif update_choice == "theme"
					puts "Please enter a new theme for the client"
					update_choice = gets.chomp
					client_form[:theme_input] = update_choice
				elsif update_choice == "vip"
					puts "Please update VIP status (y/n)."
					update_choice = gets.chomp.downcase
					if update_choice == "y"
						vip = true
						
						client_form[:vip_input] = vip
					elsif update_choice == "n"
						vip = false
						
						client_form[:vip_input] = vip
					end
				elsif update_choice == "budget"
					puts "Please enter updated client's budget"
					update_choice = gets.chomp
					client_form[:budget_input] = update_choice
				else 
					puts "That is not a valid option"
				end
			elsif update_choice == "none"
				puts "Client form completed"
			else 
				puts "Invalid request"
			end

		p client_form # Print latest version of hash/client form. Exit. 
				
					

		
