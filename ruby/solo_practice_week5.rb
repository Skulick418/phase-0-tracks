# #PSUEDOCODE
# # Create method to change name, parameter will be one, the name to be changed.
# # Store original name as a variable. 
# 	# Have parameter input put into an array and split all of it's characters by using chars command
# 	# use reverse command to reverse all of the letters 
# 	# Use join command to join array index and make array into a string again
# 	# use downcase command to put it all in lower case then chars to turn it into an array again
# # create a new array for new names to be entered into 
# # create a vowel array that will be used for the vowel exceptions 
# # Iteriate through parameter of method, what was put in. 
# # Create if exception. If any character in the vowel array is include (vowel_array.include?(parameter))
# 	# Make the vowel in the parameter move to the next vowel by going through the exception index. 
# 	# If letter is equal to a space then output will be a space
# 	# Create exceptions for consonats next to vowels so they wont be vowels. 
# 	# Create else staement for eberything else, they will move to the next letter using the .next! command 
# # Create array to have all encrypted changed names put in that array to push into this array 
# # Create user interface 
# 	# Ask user for name 
# 	# Put username into the method then print that. 
# 	# Print original name with decrypted name
# 	# Loop until given keyword quit
# 	# Add each loop given into new array from line 16. 
# # Print new names. 

# def name_change(name)
# 	original_name = name 
# 	name.chars.reverse!.join(' ')
# 	name.downcase.chars 
# 	new_user_name = []
# 	vowels = %w(a e i o u)
# 	name_.map do |letters| 
# 		if vowels.include?(letters)
# 			letters = vowels[vowels.index(letter) + 1]
# 			new_user_name << letters 
# 		elsif letters == " "
# 			letters = " "
# 			new_user_name << letters 



# Create reverse name method. Name will be parameter. 
		# Turn string into an array by using .chars command, splitting each letter into its own variable. 
		# Use the .reverse! command on the new array. 
		# join the names, downcase them, then use chars again. 
	# Create new array label it new_user_name. Iteraition variable (the pointer) will be put into this array. 
	# Create vowel array with vowels. 
	# Begin iteriating through methods parameter 
	# Create if instance. If vowels are included in the parameters 
		# index change to the next vowel in the vowel array. Create a variable for that. vowel_array[vowel_array.index(pointer) + 1 (+1 to move to the next variable in array)]
		#  add pointer to new array 
	# Create fringe elsif's for consonants next to vowels. 
	# Else statement makes pointer = pointer.next! making it go to the next variable. Add pointer to new array
	# End if statement end iteriation. 
	# join new array by using new_array = new_array.join("")
	# Print new array and end method 
# Create userinterface 
	# Create until valid loop declaring valid is false above. 
		# Ask user the name they would like to encrypt. Make that name = gets.chomp.downcase
		# If the name is equal to quit then valid end is true and loop quits
		# Else it runs the reverse name method with in a string saying here is your new name.

def reverse_name(name)
	original_name = name
	name = name.chars.reverse!.join("").downcase.chars 
	new_name = []
	vowels = %w(a e i o u) 
	name.map do |pointer|
		if vowels.include?(pointer)
				new_name << vowels[vowels.index(pointer) + 1] 
		elsif pointer == " "
			pointer = " "
			new_name << pointer
		elsif pointer == "d"
			pointer = "f"
			new_name << pointer
		elsif pointer == "h"
			pointer = "j"
			new_name << pointer
		elsif pointer == "n"
			pointer = "p"
			new_name << pointer
		elsif pointer == "t"
			pointer = "v"
			new_name << pointer
		elsif pointer == "z"
			pointer = "b"
			new_name << pointer
		else 
			pointer = pointer.next!
			new_name << pointer
		end 
	end 
	new_name = new_name.join("")
	puts new_name
	puts "#{original_name}"
end 

# reverse_name("Sam")
user_name_list = []
puts "Welcome"
valid = false
until valid 
	puts "What name would you like to encrypt? (Type quit to exit)."
	answer = gets.chomp.downcase
		if answer == "quit"
			valid = true
		else 
			"#{original_name}  is now #{reverse_name(name)}"
		end
		user_name_list << reverse_name(name)
end

p user_name_list