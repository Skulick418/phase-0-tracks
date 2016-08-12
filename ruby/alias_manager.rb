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
# 		new_user_name
# end

# p encryptt ('felicia torres')

# puts "Welcome"
# valid_end = false
# until valid_end == true
# 	puts "Please insert user name for encryption"
# 	name = gets.chomp
# 	if name.downcase == "end"
# 		valid_end = true
# 	else puts "New user name is #{encryptt(name)}"
# end
# end



def user_name_change(user_input)
	user_input = user_input.chars.reverse!.join('')
	user_input = user_input.downcase.chars
	exceptions = ['a','e','i','o','u','a']
	new_user_name = []
	user_input.map do |letters|
		if exceptions.include?(letters)
			exceptions_index = exceptions.index(letters) 
			letters = exceptions[exceptions_index + 1]
			new_user_name << letters
		elsif letters == " "
			new_user_name << letters
		else 
			letters = letters.next!
			new_user_name << letters
		end
	end
	new_user_name = new_user_name.join('')
	new_user_name
end

new_user_name_list = []
puts "Welcome"
valid_end = false
until valid_end == true
	puts "Please insert user name for encryption. Type end when finished"
	name = gets.chomp
	if name.downcase == "end"
		valid_end = true
	else 
		puts "New user name is #{user_name_change(name)}"
		new_user_name_list.store(user_name_change)
	end
end

