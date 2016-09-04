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
