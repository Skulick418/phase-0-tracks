
class Orange_tree 
  attr_reader 
  attr_accessor :age 
  
 
  def initialize(age, height) 
    @age = age  
    @start_fruit =  0
    @height = height
    @alive = true
  end 
  
  def tree_age
    # @start_fruit = @age * 5
    @age =  age + 1 
    if @age >= 50 
      @alive = false
      puts "The tree has died!"
      @start_fruit = 0
   elsif @age < 5 
      @start_fruit =  0
    end 
      @age
      @start_fruit
    
  end
  
  def height 
    if @alive == false
      puts "The tree was cut down for wood"
      @height = 0
    else 
    
    @height = @age * 2
    @height 
    end 
  end
  def fruit_count
    if @alive == false 
      puts "You can't get fruit from a dead tree"
      @start_fruit = 0
    else 
   @start_fruit = @age * 5
    fruit = @start_fruit 
   puts "#{fruit} amount of oranges"
    end 
  end 
  
  def fruit_pick(int)
     if @alive == false 
      puts "You can't get fruit from a dead tree"
    elsif @start_fruit == 0 
       puts "There is no fruit on this tree!"
     else  
    fruit_pick = @start_fruit - int 
    puts "#{fruit_pick}"
     end 
  end 
end 

ages = [ 2, 4, 6, 8, 10, 12, 14, 16, 20, 49, 50]
height = [ 2, 4, 6, 8, 10, 12, 14, 16, 20, 49, 50]
test = Orange_tree.new(ages.sample, height.sample)
# =begin  
#   puts test.tree_age
#   puts test.height
#  puts test.fruit_count
#  puts test.fruit_pick(2)
#  puts test.tree_age
#  puts test.height
# =end
tree_hash = {}
tree_array = []
 5.times do |x|
   tree_number = x + 1
   # puts "This is tree #{tree_number}" 
   test = Orange_tree.new(ages.sample, height.sample)
   tree_array << tree_hash[:tree_age] = test.age 
   p tree_hash
  p test.fruit_count
   p tree_array
 end 
