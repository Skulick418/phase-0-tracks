def adder(arr, item)
    arr.push(item)
  end

p adder(["lemon"], "a")

def returns_array(itm1, itm2, itm3)
  ["#{itm1}", "#{itm2}", "#{itm3}"]
end

puts returns_array(1, 3, 5)



sports = ["gymnastics", "football", "polo", "diving", "swimming"]
sports.slice!(2)


sports.insert(2, "running")
puts sports

sports.shift
puts sports

sports.include?("running")
  if true
    puts "yes thats there"
  else
    puts "no that's not there"
  end


medals = ["gold", "silver", "bronze"]

olmypics = sports|medals
puts olmypics
