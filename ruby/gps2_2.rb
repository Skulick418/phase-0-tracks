
#initial set up casandra kinsfather

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # get a string  through a method separate by spaces .split
 # set default quantity for the hash, iterate through an array
 # print the list to the console [can you use one of your other methods here?] 
# output: a hash

def grocery_list(str)
 grocery_array = str.split
 grocery_hash = {}
 grocery_array.each{|item| grocery_hash[item] = 1}
 return grocery_hash
end # end of grocery_list



# Method to add an item to a list
# input: item name and optional quantity, set up as an parameter, create item in hash
# steps:
 #create new item in the hash as key 
 #create new quantity as value
# output: a hash
example_list = grocery_list("apple carrots berries")
def add_item(groc_hash, item, qty= 1)
  groc_hash[item] = qty # the reall good stuff
  return groc_hash
end
p add_item(example_list, "milk", 2)
p add_item(example_list, "cheese")



# Method to remove an item from the list
# input: create a method and have  2 parameters from hash  one is the item to be deleted and the other is the hash .delete
# steps:
 # delete the item(key) from hash
# output: new list without the item  hash

def remove_item(item, hash)
 hash.delete(item)
 return hash 
end
p remove_item("milk", example_list)

# Method to update the quantity of an item
# input: what parameters, what item, what the item is changing to, new quanity and the hash
# steps:
 # hash name push in the key 
 # quantity parameter
# output: list with updated  value
def update_list(groc_item, groc_hash, qty)
 groc_hash[groc_item] = qty
 return groc_hash
end
p update_list("cheese", example_list, 5)
# Method to print a list and make it look pretty
# input:  iterate thru hash, each do  key and value
# steps:
 #iterate
 #print
#output: print out list
def print_list(groc_hash)
 groc_hash.each do |key,value|
   p " there are #{value} #{key} on the list."
 end
p print_list(example_list)
 
end





















# def create_list(user_input) 
#   grocery_list = Hash.new  
#   array = user_input.split(" ") 
#   array.each do |item|  
#     grocery_list[item] = 1  
# end 
#   grocery_list
# end



  


# shopping_cart = create_list("chicken celery breadcrumbs")


# def add_item(item, quantity, grocery_list)
#  if grocery_list[item]
#    grocery_list[item] += quantity 
# else 
#   grocery_list[item] = quantity 
#  end 
#   grocery_list 
# end 

# p add_item("carrot", 4, shopping_cart)

# def remove (item, grocery_list) 
#   grocery_list.delete(item)
#   grocery_list 
# end 

# p remove('carrot', shopping_cart)

# def update(item,new_quantity, grocery_list)
#   grocery_list[item] = new_quantity 
#   grocery_list 
# end 

# p update("chicken", 5, shopping_cart)

# def print(shopping_cart)
#   shopping_cart.each do |item, quantity|
#     puts "Here is your item #{item} : #{quantity}"
#   end
#   end
  
#  p print(shopping_cart)