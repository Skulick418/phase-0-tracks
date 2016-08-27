#PSEUDOCODE 
#Objective: To create a list that has a quantity of the amount given. Can add to the list. 
# Can add to the quanitity can remove from the list can remove quantitiy. 

#Method: Create a list(parameter) 
#Input: Strings seperated by spaces. 
#Steps: 
	# Create an instance variable equal to an empty hash.
	# Use .split on string given. 
	# set default quantity for hash 
	# print the list to the console 

def grocery_list(items)
	@list = {} 
	items = items.split 
	items.each do |item|
        @list[item] = 1   
    end
    @list 
 end  


# p grocery_list("Chicken breadcrumbs celery")

#Method Add an item to the list 
	#item name and quanitity 
	# set item name as key and quantity as value 
#output: Changed item and quantity 

def add_item(item)
	puts "What would you like to add to your grocery list today?"
	@list.store(item)
	@list 
end 

# p add_item("Grapes", 10)
# p @list  


 # Method to remove an item from the list
 #input the parameter the thing to be deleted
 #steps run instance variable for hash with delete method(parameter)
 #output: New list without parameter 

 def remove_item(item)
 	@list.delete(item)
 	@list 
 end 

# remove_item("Grapes")
# p @list



 #Method to update the quantity of an item 
 #input the item and new amount 
 # steps use store command on given parameter 
 # output changed amount for item 

 def update_quantity(item, new_amount)
 	@list[item] = new_amount 
 end 

#  update_quantity("Chicken", 0)
# p @list




 


 #Method print list make it pretty
 # input hash that has been created
 # steps iteriate through hash stateing value and key. 
def nice_list
 @list.each do |key, value|
 	puts "Item: #{key} Amount: #{value}"
 end 
end 

#USER INTERFACE

puts "Welcome to the Grocery List Maker 2.0!"
puts "What is going on your grocery list? Please type in your entire list with spaces seperating the items (Breadcrumbs Apples) and please add characters for multi worded items (ice-cream ice_cream). Please type done when finished "
grocery_items = gets.chomp.downcase


grocery_hash = grocery_list(grocery_items)

p add_item(grocery_hash)





