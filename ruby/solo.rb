#Design a class that allows user to build a snowboard. 


class Snowboard_Build 
	attr_reader :name, :height, :company   
	attr_accessor :front_foot, :style
	def initialize(name, height, style, front_foot, company)
		puts "Begin initilization for snowboard builder"
		@name = name 
		@height = height
		@style = style 
		@company = company
		@bindings = 2 
		@flex = "middle"
	end 

def description
	puts "Name:" + @name 
	puts "Height" + @height
	puts "Style" + @style 
	puts "Company" + @company 
	puts "Front Foot" + @front_foot
	puts "Bindings" + @bindings
	puts "Board Flex" + @flex 
	puts "New board has been created"
end 
end 

test_board = Snowboard_Build.new("Sam", "6'3", "Park", "Right", "Burton")



