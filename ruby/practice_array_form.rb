# Ask user for information 
# Make information equal hash_name[:symbol_name]
# Ask user if they would like to update.
# Use if statements if their answer is equal to _____ then ask what in specific
# they will be updating
# update hash symbol 
# print hash and exit 
# client_form = Hash.new 
# puts "Welcome to the client form creator!"
# puts "What is the age of the client?"
# age = gets.chomp.to_i 
# client_form[:age] = age 

# puts "What is the name of the client?"
# name = gets.chomp
# client_form[:name] = name 

# puts "What decor would you like?"
# decor = gets.chomp
# client_form[:decor] = decor 

# puts "Is this person a VIP?"
# vip = gets.chomp.downcase
# 	if vip == "yes"
# 		client_form[:VIP] = "Yes"
# 	elsif vip == "no"
# 		client_form[:VIP] = "No"
# 	else 
# 		client_form[:VIP] = "Invalid"
# 	end 

# p client_form 

# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#   end

#   def speak(integer)
#   	integer.to_i.times {puts "Woof!"}
#   end 

#   def roll_over
#   	puts "Roll over"
#   end

#   def dog_years(integer)
#   	dog_years = integer.to_i * 7 
#   	puts "that is #{dog_years} dog years"
#   end 

#   def good_boy(name)
#   	puts "#{name} is a good boy!"
#   end 

# end

# dax = Puppy.new 
# dax.fetch("ball")
# dax.speak(3)
# dax.roll_over
# dax.dog_years(2)
# dax.good_boy("Dax")

class Greetings 
	def hello(name)
		puts "Hello #{name!}"
	end 

	def goodbye(name)
		puts "Goodbye #{name}!"
	end 

	def rude
		puts "Oh, you're still here....."
	end 
end 

list = []
5.times do 
	list << Greetings.new 
end 

Greetings.each do |x|
	x.hello("Sam")
	x.goodbye("Sam")
	x.rude 
end 







