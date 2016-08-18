def create_list(user_input) 
  grocery_list = Hash.new  
  array = user_input.split(" ") 
  array.each do |item|  
    grocery_list[item] = 1  
end 
  grocery_list
end



  


shopping_cart = create_list("chicken celery breadcrumbs")


def add_item(item, quantity, grocery_list)
 if grocery_list[item]
   grocery_list[item] += quantity 
else 
  grocery_list[item] = quantity 
 end 
  grocery_list 
end 

p add_item("carrot", 4, shopping_cart)

def remove (item, grocery_list) 
  grocery_list.delete(item)
  grocery_list 
end 

p remove('carrot', shopping_cart)

def update(item,new_quantity, grocery_list)
  grocery_list[item] = new_quantity 
  grocery_list 
end 

p update("chicken", 5, shopping_cart)

def print(shopping_cart)
  shopping_cart.each do |item, quantity|
    puts "Here is your item #{item} : #{quantity}"
  end
  end
  
 p print(shopping_cart)