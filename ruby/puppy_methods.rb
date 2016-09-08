
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def bark(x) 
    x.to_i.times {puts "woof"} 
  end 
  
  def roll_over 
    puts "roll over"
  end 
  
  def dog_years(x)
    age_conversion = x.to_i * 7 
    puts "#{x} is #{age_conversion} in dog years"
  end 
  
  def friend(dog_name)
    puts "#{dog_name} is my friend"
    
  def initialize 
    puts "Initializing new puppy instance ..."
  end 

end 
end 



dax = Puppy.new 
dax.fetch('ball')

# dax.bark(5)

# dax.roll_over

# dax.dog_years(2)

# dax.friend('spot')

class Sports 
   
    def initialize 
      puts "Initializing new puppy instance ..."
      end 
      
      def favorite_sport(choice)
        puts "#{choice} is my favorite sport."
      end 
      
      def least_favorite_sport(choice2)
        puts "#{choice2} is my least favorite sport" 
      end 
        
end 

sports_list = []

50.times do 
  sports_list.push(Sports.new)
end 

sports_list.each do |index|
  index.favorite_sport('Hockey')
  index.least_favorite_sport('Golf')
end 