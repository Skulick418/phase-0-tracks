#PSEUDOCODE 
#Create grocery list class
# Create method that will ask user what they want. Add that input into a hash

class Grocery_list 
	puts "Welcome to the grocery list maker 2.0!"
	
	def create_list 
		puts "What would you like to add today? One line seperate by spaces."
		items = gets.chomp.downcase 
		@list = {}
		items = items.split 
		items.each do |x|
			@list[x] = 1
		end 
		@list 
	end 

	def add_item 
		puts "Would you like to add any items to your grocery list? Please add the item then press enter."
		new_items = gets.chomp.downcase 
		new_items.each do |x|
			@list[x]
		end
		@list
	end 
end 



cart = Grocery_list.new 

cart.create_list(items)


