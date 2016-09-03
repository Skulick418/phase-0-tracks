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
	
end 
p fruit_salad