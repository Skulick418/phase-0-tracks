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
end 
end 



dax = Puppy.new 
dax.fetch('ball')

dax.bark(5)

dax.roll_over

dax.dog_years(2)

dax.friend('spot')