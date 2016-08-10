#Create new hash
client_form = {}

#Driver code
puts "Please enter client's name."
client_form[:name_input] = gets.chomp #Made user input new data in hash's array.

puts "Please enter the client's age."
client_form[:age_input] = gets.chomp.to_i

puts "Please enter the chosen theme"
client_form[:theme_input] = gets.chomp

puts "Please enter if fish tank will be installed (y/n)"
client_form[:fish_input] = gets.chomp
if :fish_input == "y"
	:fish_input = true
elsif :fish_input == "n"
	:fish_input = false
else
	puts "please enter y or n case senesitive."
end