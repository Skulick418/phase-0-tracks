
def good_bye
puts "Have a good day!"
yield("John Doe")
yield ("Spiderman")
end

good_bye { |name| puts "See ya later! #{name}"}

sports = ["football", "soccer", "baseball", "volleyball"]
new_sports = ["Wrestling", "Hockey"]

# p sports
# new_sports

sports.each do |item|
 new_sports << item 
#puts "I love #{item}"
end

p new_sports


sports = {"football" => 1, "soccer" => 2, "baseball" => 3, "volleyball" => 4}

sports.each do |key, value|
puts "#{key} is my number #{value} sport!"
end

p sports

movie_genres = ['scary', 'drama', 'comedy', 'action']

movie_genres.map! do |genre|
puts " I like this #{genre} movie."
genre.upcase
end
puts movie_genres


# array 1

number = [1, 2, 3, 4, 5, 6]

number.delete_if { |digits| digits < 3 }

p number 

# hash 1


sports = {"football" => 1, "soccer" => 2, "baseball" => 3, "volleyball" => 4}

sports.delete_if {|key, value| key == "football" } 

p sports 

# array 2

numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.keep_if { |num| num > 5}

p numbers

# hash 2

final_score = { 'football' => 23, 'soccer' => 2, 'volleyball' => 24, 'baseball' => "Red Sox 4 Mets 3"}

final_score.keep_if {|key, value| key == "baseball" }

p final_score


# array 3
 
alphabet = ['a', 'b', 'c', 'd', 'e']

new_alphabet = alphabet.select { |char| char =~ /[abc]/ }

p new_alphabet

# hash 3

random_data = {'a' => 123, 'b'=> 345, 'c' => 369, 'd' => 554}

new_data = random_data.select { |key, value| value < 350}

p new_data





# array 4

color = ['blue', 'yellow', 'green', 'white']

new_color = color.take_while { |item| item.length < 6 }

p new_color

 


bird_population = { 'parrot' => 4, 'pigeon' => 23, "crow" => 10, "flamingo" => 45 }

 new_pop = bird_population.reject { |key, value| value < 44 }
 
 p new_pop 

