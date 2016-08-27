#PSEUDOCODE
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create an empty hash 
  # put string item into an array with .split 
  # set default quantity for hash 
  # print the list to the console [can you use one of your other methods here?]
# output: A hash  
# def create_list(items) 
# 	list = {}
# 	items = items.split
# 	items.each do |item|

# end 

def create_list(items)
    @list = {}
    items = items.split
    items.each do |item|
        @list[item] = 1
    end
    @list
end



create_list("Carrots apples chicken")
# Method to add an item to a list
# input: item name and optional quantity
# steps: 
#Create add item method 
	# set item name as key and optional quanity as value 
# output: print item and quantity 

def add_item
	@list.store(item, amount)
	@list 
end 

add_item("Breadcrumbs", 2)

p @list 



# Method to remove an item from the list
# input: item_name as string 
# steps: Ask user what they want to remove 
         # have users input deleted with .delete command 
# output: hash without previous user input

def remove_item(item) 
	@list.delete(item)
end 

# remove_item("Breadcrumbs")

# p @list

# Method to update the quantity of an item
# input: item name and new number of item 
# steps: Ask user what item they want to put more of
# Ask user how many of the item they want to add.
# output: New value for item 

def update_amount(name, number)
	@list.store(name, number)
	@list 
end 

update_amount("chicken", 3)

p @list 


# Method to print a list and make it look pretty
# input: Hash that has been created 
# steps: iterate through items and print the key and value 
# output: printed string 

@list.each do |key, value|
	puts "Item: #{key} Amount: #{value}"
end 


