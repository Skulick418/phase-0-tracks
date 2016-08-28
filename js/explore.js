// PSUEDOCODE 
// Create fucntion that takes a string and reverses it 
// "hello" => "olleh"

//Declare a function and set the string that will be reversed as the argument
	// set a variable to put the the parameter 
	// set up a loop using for to run over each character in the string
	// loop will look like var i = (parameter).length-1; i >= 0; i--
	// store new character in empty string variable 
// loops repeat until completed 
// returns the new string 

function reverse(string) {
	var new_string = "";
	for (var i = string.length-1; i >= 0; i--) {
		new_string += string[i]
	}
	return new_string
}

// DRIVER CODE 
var name_one = reverse("hello")
console.log(name_one)