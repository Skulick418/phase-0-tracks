def calculate(x, operator, y)
	case operator 
	when "+" 
		x + y 
	when "-"
		x - y 
	when "*"
		x * y 
	when "/"
		x / y 
	end 
end 

# puts calculate(2, "+", 2)

puts "Please enter a caluclation (x + y)"
answer = gets.chomp
answer_array = answer.split(" ")
operator = answer_array[1] 
final_answer = calculate(answer_array[0].to_i, operator, answer_array[2].to_i)
puts final_answer 

def calculate(x, operator, y)
	case operator 
	when "+" 
		x + y 
	when "-"
		x - y 
	when "*"
		x * y 
	when "/"
		x / y 
	end 
end 

# puts calculate(2, "+", 2)
new_calculation = []
loop do 

puts "Please enter a calcuation (x + y)"
answer = gets.chomp
break if answer == "done"
answer_array = answer.split
# p answer_array 
operator = answer_array[1] 
final_answer = calculate(answer_array[0].to_i, operator, answer_array[2].to_i)
puts final_answer 
history = "#{answer} = #{final_answer}"
new_calculation << history 
p new_calculation 

end 
puts "#{new_calculation.length} calculations performed:" 
	new_calculation.each do |history|
		puts "#{history}"
	end 

