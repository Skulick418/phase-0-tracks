# module Shout 
# 	puts "Hello world!"

# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
#   	end

#   	def self.yelling_happily(words)
#   		words + "!!!" + " :) YAY!"
# 	end
# end 

# p Shout.yelling_happily("Sam")
# p Shout.yell_angrily("Sam")

module Shout 
	def hockey_fan(team)
		puts "#{team} are the best!"
	end
end

class Islanders 
	include Shout 
end 

class Rangers
	include Shout
end 

#Driver Code# 

isles = Islanders.new 
isles.hockey_fan("Islanders")

rags = Rangers.new 
rags.hockey_fan("Somehow I think the Rangers")


module 
# module Shout
#   puts "ECHO ECHO ECHO"

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   	def self.yelling_happily(words)
#   		words + "!!!" + " :) YAY!"
# 	end
# end 




	# def do_the_thing
	# 	include Shout 
	# end

# p Shout.yell_angrily("No")

# p Shout.yelling_happily("Yes")

# module Shout 
# 	def hockey_fan(team)
# 		puts "#{team} are the best!"
# 	end
# end

# class Islanders 
# 	include Shout 
# end 

# class Rangers
# 	include Shout
# end 

# #Driver Code# 

# isles = Islanders.new 
# isles.hockey_fan("Islanders")

# rags = Rangers.new 
# rags.hockey_fan("Somehow I think the Rangers")
