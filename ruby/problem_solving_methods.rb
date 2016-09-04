#PSUEDOCODE
# Iteriate through the array to see if the index_target is in it
# If it is in it print the index number for the number in the array
# If not print nill 

def search(array, index_target)
	index = 0 
	
while index < array.length 
	if array[index] == index_target
		return index 
	else 
		nil 
	end
	index += 1 
end 
end 

arr = [42, 89, 23, 1]
p search(arr, 1)

# Method that takes a number
# If number is 1 or 0 number is equal to 1 
# Using that number -1 and number -2 those being the two numbers for the number add those together
# Add together using method 
# Put results in an array

def the_fib(number)
	fib_array = Array.new 

	if number == 0 
		return fib_array = []
	elsif number == 1
		return fib_array = [0]
	elsif number == 2 
		return fib_array = [0, 1]
	else 
		fib_array = [0, 1]
	end 

	while fib_array.length < number 
		fib_array[fib_array.length] = fib_array[-1] + fib_array[-2]
	end
	return fib_array
end  

p the_fib(1)
p the_fib(6)
p the_fib(100)


def bubble_sort(array)

  loop do
    swapping_happened = false
    
    0.upto(array.size-2) do |index|
      if array[index] > array[index+1]
        temp = array[index]
        array[index] = array[index+1]
        array[index+1] = temp
        swapping_happened = true
      end
    end
    break unless swapping_happened
  end
  array 
end

driver = [3, 4, 2, 500, 1, 77, 24, 20000]
p bubble_sort(driver)