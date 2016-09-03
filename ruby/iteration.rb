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