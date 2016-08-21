# Ask user for information 
# Make information equal hash_name[:symbol_name]
# Ask user if they would like to update.
# Use if statements if their answer is equal to _____ then ask what in specific
# they will be updating
# update hash symbol 
# print hash and exit 
client_form = Hash.new 
puts "Welcome to the client form creator!"
puts "What is the age of the client?"
age = gets.chomp.to_i 
client_form[:age] = age 

puts "What is the name of the client?"
name = gets.chomp
client_form[:name] = name 

puts "What decor would you like?"
decor = gets.chomp
client_form[:decor] = decor 

puts "Is this person a VIP?"
vip = gets.chomp.downcase
	if vip == "yes"
		client_form[:VIP] = "Yes"
	elsif vip == "no"
		client_form[:VIP] = "No"
	else 
		client_form[:VIP] = "Invalid"
	end 

p client_form 

puts "Would you like to update anything? (Yes or no)."
update = gets.chomp.downcase
	if update == "no"
		p client_form 
	elsif update == "yes"
		puts "What would you like to update?"





