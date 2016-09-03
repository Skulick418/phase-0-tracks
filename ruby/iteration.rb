def talk
	puts "Hello my name is....."
	yield ("Sam")
	puts "My last name is...."
	yield ("Kulick")
end
talk {|name| puts name}