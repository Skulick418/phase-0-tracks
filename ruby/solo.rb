#Form that will ask user their preference for what snowboard they want built
# User has input and writeability on all things except flex and bindings 
# Create a class with paramenets needed for each accessor I will be using
# Assign variables in initialize 
# Create a description method to be used at the end 
# Create user interface with loop do break will be quit 
# Ask user for their information
# Collect user information into a hash push that hash into the class then into an array. 
# Print all information given using .each do method on array. 
class Snowboard_Build 
	attr_reader :bindings,:flex   
	attr_accessor :front_foot, :style,:name, :height, :company
	def initialize(name, height, style, left_foot, company)
		puts "Begin initilization for snowboard builder"
		@name = name 
		@height = height
		@style = style 
		@company = company
		@left_foot = left_foot 
		@bindings = 2 
		@flex = "middle"
	end 

def description
	puts "Name:" +  @name 
	puts "Height" + @height
	puts "Style" + @style 
	puts "Company" + @company 
	puts "Bindings" + @bindings.to_s 
	puts "Board Flex" + @flex 
	if @left_foot 
		puts "#{@name} needs the right binding infront"
	else 
		puts "#{@name} needs the left binding infront"
	end
	puts "New board has been created"
end 

def get_some_air_question
	puts "Are you going to go for the jump?"
	answer = gets.chomp.downcase
		if answer == "yes"
			puts "Enjoy the air!"
		else 
			puts "Go big or go home!"
		end
end 
def front_foot
	if @left_foot 
		@left_foot = true 
	else
		@left_foot = false
	end
end
end 

def front_foot_true_false(string)
	if string == "yes"
		true 
	else
		false
	end
end 

# p test_board = Snowboard_Build.new("Sam", "6'3", "Park", "Right", "Burton")

# test_board.get_some_air_question
snowboards = []
loop do 
	puts "Hello what is your name? (type quit to enter)."
	name_or_break = gets.chomp.downcase
	break if name_or_break == "quit"
	snowboard_form = {}
	snowboard_form[:name] = name_or_break

	puts "Please enter your height"
	height = gets.chomp.to_s
	snowboard_form[:height] = height 

	puts "Please pick your riding style. Choices: Park, Downhill."
	style_choice = gets.chomp.downcase 
		if style_choice == "park"
			snowboard_form[:style] = style_choice
		elsif 
			style_choice == "downhill"
			snowboard_form[:style] = style_choice
		else 
			snowboard_form[:style] = "Invalid choice"
		end 
	
	puts "Please pick which company of board you would prefer. (Burton, Forum, Ride)."
	board_choice = gets.chomp.downcase
	# snowboard_form[:company] = board_choice 
		if board_choice == "burton"
			snowboard_form[:company] = board_choice 
		elsif board_choice == "forum"
			snowboard_form[:company] = board_choice
		elsif board_choice == "Ride"
			snowboard_form[:company] = board_choice
		else 
			snowboard_form[:company] = "Invalid Response"
		end 

	puts "Are you a lefty? (Yes or no)"
	left_answer = gets.chomp.downcase
	until left_answer == "yes" || left_answer == "no" 
		puts "Invalid response please choose yes or no"
		left_answer = gets.chomp.downcase
	# until front_foot_true_false(left_answer)
	# 	puts "Invalid response choose Yes or No"
	# 	left_answer = gets.chomp.downcase.
	end 
	left_answer = front_foot_true_false(left_answer)
	snowboard_form[:front_foot] = left_answer 

	snowboard_new = Snowboard_Build.new(snowboard_form[:name], snowboard_form[:height], snowboard_form[:style], snowboard_form[:front_foot], snowboard_form[:company]) 
	snowboards << snowboard_new 
	
	p snowboards
end 




p snowboards 

snowboards.each do |x|
	puts "Snowboard creation" + (snowboards.index(x) +1).to_s
	x.description
end



