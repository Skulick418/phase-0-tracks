class Snowboard_Build 
	attr_reader :bindings,:flex   
	attr_accessor :front_foot, :style,:name, :height, :company
	def initialize(name, height, style, left_foot, company)
		puts "Begin initilization for snowboard builder"
		@name = name 
		@height = height
		@style = style 
		@company = company
		@bindings = 2 
		@flex = "middle"
		@left_foot = left_foot 
	end 

def description
	puts "Name:" + @name 
	puts "Height" + @height
	puts "Style" + @style 
	puts "Company" + @company 
	puts "Left Foot" + @left_foot
	puts "Bindings" + @bindings
	puts "Board Flex" + @flex 
	puts "New board has been created"
	if @left_foot = true 
		puts "#{@name} needs the left binding infront"
	elsif @left_foot = false 
		puts "#{@name} needs the right binding infront"
	end
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

# p test_board = Snowboard_Build.new("Sam", "6'3", "Park", "Right", "Burton")

# test_board.get_some_air_question

loop do 
	puts "Hello what is your name? (type quit to enter)."
	name_or_break = gets.chomp.downcase
	break if name_or_break == "quit"
	snowboard_form = []
	snowboard_form[:name] = name_or_break

	puts "Please enter your height"
	height = gets.chomp
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

