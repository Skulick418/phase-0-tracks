module Shout
  puts "ECHO ECHO ECHO"

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  	def self.yelling_happily(words)
  		words + "!!!" + " :) YAY!"
	end
end 


	# def do_the_thing
	# 	include Shout 
	# end

p Shout.yell_angrily("No")

p Shout.yelling_happily("Yes")