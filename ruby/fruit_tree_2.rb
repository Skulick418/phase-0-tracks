#Create Orange_tree class 
# Initiliaze method with instance variables 
	# Set age, height, start_fruit_number and alive status (true) as instance variables 
	# Set age and height as parameters 
# Create an aging method 
	# Allow the age of the tree to equal it's age times three 
	# If statement. If it is older then 50 it is dead.
# Create produce fruit method 
	# If age is younger then 5 the start_fruit_number is equal to zero. 
	# Else start_fruit_number is equal to the @age times five 
# Create count fruit method 
	# Count fruit is equal to start_fruit_number 
# Create pick orange method 
	# pick orange = count orange - 1 
# End Method 

class Orange_tree
	attr_accessor :tree_hash 
	attr_reader :tree_hash
	def initialize
		@age = 0  
		@height = 0 
		@start_fruit = 0 
		@alive = true 
		@tree_array = []
		@tree_hash = Hash.new 
	end 

	def age_tree
		@age = @age + 1 
		@age
		@tree_hash[@age] = "age"
		@tree_hash

		 
		
		if @age >= 50 
			@alive = false 
			puts "The tree has died :("
		end 
		@start_fruit = 0 
	end 

	def produce_fruit
	 
		if @age < 5 
			@start_fruit = 0 
			# puts "Still needs time to grow! Their are zero oranges on the tree"
			# @tree_hash[@age] = "age"
			@tree_hash[@start_fruit] = "fruit"
		else 
			@start_fruit = @age * rand(4..5) 
			
			# @tree_hash[@age] = "age"
			# puts "#{@start_fruit} oranges on the tree"
			@tree_hash[@start_fruit] = "fruit"
		end 
	end 

	

	def pick_orange 
		if @start_fruit == 0 
			# puts "No oranges to pick!"
			


		else 
			pick_orange = @start_fruit - 1 
			# puts "You just picked a fresh orange. Their are now #{pick_orange} oranges on the tree"
		end 
	end 

	def count_orange 
		count_orange = @start_fruit
		# puts "#{count_orange} oranges on the tree"
		@tree_hash[@start_fruit] = "fruit on tree"
	end 

	def height 
		@height = @age * 3 
		
			 # @tree_array << @height
			 @tree_hash[@height] = "height"
	end 

	def tell_height 
		tell_height = @height 
		# puts "The tree is #{tell_height} feet tall"
		 
	end 

	# def tree_array
	# 	p @tree_array

		

	# end 

	def tree_hash
		p @tree_hash
	end 





end 

oranges = Orange_tree.new 

oranges.age_tree
oranges.height
oranges.produce_fruit
oranges.tree_hash
oranges.age_tree
oranges.produce_fruit
oranges.tree_hash


# oranges.tree_array



