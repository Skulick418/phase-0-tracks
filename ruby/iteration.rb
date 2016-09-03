# Release One
def talk
	puts "Hello my name is....."
	yield ("Sam")
	puts "My last name is...."
	yield ("Kulick")
end
talk {|name| puts name}

fruits = ["apple", "pear", "watermelon","cherry"]
fruit_salad = ["grapefruit", "raisins"]

fruits.each do |x|
	fruit_salad << x
end 

p fruit_salad


fruits.map! do |x|
	puts "I like to eat #{x}'s"
end
	
sports = {"hockey" => 1, "soccer" => 2, "baseball" => 3, "volleyball" => 4}

sports.each do |key, value|
puts "#{key} is my number #{value} sport!"
end

p sports
# Release Two
# Array 1 

 farm_animals = ["pig","cow","chicken","goat"]

 farm_animals.delete_if {|animal| animal == "pig"}

 p farm_animals

 # Hash 1

 sports = {"football" => 1, "soccer" => 2, "baseball" => 3, "volleyball" => 4}

sports.delete_if {|key, value| value < 3 } 

p sports 

# Array 2 

 farm_animals = ["pig","cow","chicken","goat"]
 farm_animals.keep_if {|x| x == "goat"}
 p farm_animals

# Hash 2 

 sports = {"football" => 1, "soccer" => 2, "baseball" => 3, "volleyball" => 4}

 sports.keep_if {|key, value| value < 3 }

 p sports 

 #Array 3 

alphabet = ['a', 'b', 'c', 'd', 'e']

new_alphabet = alphabet.select { |char| char =~ /[abc]/ }

p new_alphabet

# Hash 3 

random_data = {'a' => 123, 'b'=> 345, 'c' => 369, 'd' => 554}

new_data = random_data.select { |key, value| value < 350}

p new_data

# Array 4

numbers = [1, 2, 3, 4, 5, 6]

new_numbers = numbers.take_while {|x| x < 4}
other_numbers = numbers.drop_while {|x| x < 4}

p new_numbers
p other_numbers

# Hash 4 

menu_item = {"chicken" => 1, "salad" => 2,"steak" => 3}
new_menu = menu_item.reject { |key, value| key == "salad" }
p new_menu
