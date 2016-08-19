class Snowboard_Build 
	attr_reader :name, :height, :company   
	attr_accessor :front_foot, :style
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

