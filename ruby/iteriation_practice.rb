letters = ["a", "b", "c", "d", "e"]

name_values = {"Sam" => 1, "Schneia" => 2, "Matt" => 3, "Lenny" => 4} 

letters.each do |change|
	puts change 
end 

name_values.each do |key, value|
	puts "#{key} name value is #{value}" 
end 


letters.map! do |change|
	puts change.next! 
end 


numbers = [1, 2, 3, 4, 5, 6]

numbers.delete_if { |change| change > 4}

puts numbers 

number_value = {"one" => 1, "two" => 2, "three" => 3}

number_value.delete_if {|key, value| key == "one"}

puts number_value

numbers.keep_if { |change| change == 2}

puts numbers 

sports = {"baseball" => 1, "soccer" => 2, "basketball" => 3}

sports.keep_if {|key, value| key == "baseball"}

p sports

