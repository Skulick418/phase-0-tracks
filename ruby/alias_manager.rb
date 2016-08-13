# PSUEDO CODE 
# 	Ask user what their user name is. 
# 	Flip the name
# 		Take that users input and space out each character into an array using the .chars command
# 		reverse the order of the characters in the array and then join them again
# 	Create vowel exception list. All vowels will go to the next vowel.
# 		Creat variable with each vowel listed in an array. 
# 		create if exception that if the above variable is included in the user_input, what's between the pipes, then switch to next index number in that array.
# 	Create exceptions for consonants next to vowels
# 		elsif statements stateing if user_input in the array, what's between the pipes, is one of the consonants then switch to the appropiate letter that's not a vowel.
# 	For all other characters switch to the next in it's index. 
# 	Create a new array for the new name. Add all changes to the new array.
# 	Make new array equal to the user_input array, what's between the pipes, with characters joined together.
# 	list variable for new user name
# 	Tell user their new user name using above method within their answer #{method(gets.chomp input)}



def user_name_change(user_input)
	user_input = user_input.chars.reverse!.join('') #Take apart characters, reverse order, join them again
	user_input = user_input.downcase.chars # take input put it in lowercase and seperate the characters into an array
	exceptions = ['a','e','i','o','u','a'] #create vowel exception array
	new_user_name = [] # empty array for new user name
	user_input.map do |letters| #change the variable letters pointing to main index. Letters will represent each index number put into user_input
		if exceptions.include?(letters) #Condition: If anything from the excption array is included in the user_input array
			exceptions_index = exceptions.index(letters) # Create variable for exception array
			letters = exceptions[exceptions_index + 1] #user_input will switch to next index number number in exception index
			new_user_name << letters # add change to new_user_name array 
		elsif letters == " " #if letters array (user_input put into an array) has a space do nothing.
			new_user_name << letters
		elsif letters == 'd' #Skipping over vowel excpetions. Couldn't figure out how to get it properly working in an array.
			letters = 'f'
			new_user_name << letters
		elsif letters == 'h'
			letters = 'j'
			new_user_name << letters
		elsif letters == 'n'
			letters = 'p'
			new_user_name << letters
		elsif letters == 't'
			letters = 'v'
			new_user_name << letters
		else 
			letters = letters.next! #if letter isn't included in excpetion array or elsif statements then move user_input to the next index number
			new_user_name << letters
		end
	end
	new_user_name = new_user_name.join('') # empty array is equal to the changed chars in letters or the user_input array and then the chars are joined
	new_user_name #
end

new_user_name_list = []
puts "Welcome"
puts "Please insert name for encryption. Type end when finished"
while true 
name = gets.chomp.downcase
if name.downcase == "end"
	break
else 
	puts "Here is your new user name comrade #{user_name_change(name)}." #Use method and put gets.chomp as the parameter and what will be called for inbetween the pipes.
end
new_user_name_list << user_name_change(name)

end
puts "Here is the record of new names"
p new_user_name_list

# Old code using if logic. Used it as a referene while coding and a reminder of what a non condensed code looks like.
# def encryptt(user_name)
# 	alphabet = "abcdefghijklmnopqrstuvwxyz"
# 	new_user_name = ""
# 	user_name.length.times do |change|
# 		if user_name[change] == "z"
# 			new_user_name << "a"
# 		elsif user_name[change] == " "
# 		new_user_name << " "
# 		elsif user_name[change] == "a"
# 		new_user_name << "e" 
# 		elsif user_name[change] == "d"
# 			new_user_name << "f"
# 		elsif user_name[change] == "e"
# 		new_user_name << "i"
# 		elsif user_name[change] == "h"
# 		new_user_name << "j"
# 		elsif user_name[change] == "i"
# 		new_user_name << "o"
# 		elsif user_name[change] == "n"
# 		new_user_name << "p"
# 		elsif user_name[change] == "o"
# 		new_user_name << "u"
# 		elsif user_name[change] == "t"
# 		new_user_name << "v"
# 		elsif user_name[change] == "u"
# 		new_user_name << "a"
# 		else
# 			name_change = alphabet[alphabet.index(user_name[change]) +1 ]
# 			new_user_name << name_change
# 		end
# 	end
# 		new_user_name_1 = new_user_name.chars.reverse!.join('')
# 		new_user_name_1
# end

# p encryptt ('felicia torres')

# puts "Welcome"
# valid_end = false
# until valid_end == true
# 	puts "Please insert user name for encryption"
# 	name = gets.chomp.downcase
# 	if name.downcase == "end"
# 		valid_end = true
# 	else puts "New user name is #{encryptt(name)}"
# end
# end



