//PSUEDOCODE
//RELEASE 0: Create function that takes an array and returns the longest thing in that phrase
	// Make function that takes array of strings
		// declare two variables, length is equal to 0 string is equal to an empty string
	// make loop that will go through the array of strings and get each string.
		// if the items length is longer then the length variable then reset that variables value to the strings.length value
		// Keep on looping that where it will check the next strings value again the former strings value that was just put into empty variable
		// make variable for the longest string at the end of the loop.
	// print the longest string. 

	function longString(array){
		var string_length = 0
		var longestString = "";

	for (var i = 0; i < array.length; i++){
		if (array[i].length > string_length) {
			var string_length = array[i].length;
			longestString = array[i];
		}
	}
	console.log(longestString);
	}

	longString(["Sam", "Schneia"]) // => "Schneia"
	




//PSUEDOCODE
// RELEASE 1: 
		//Create a function that can take two objects and check if the objects share at least one key-value pair. 
				// Make a function that can take two parameters. 
				// loop through both parameters 
						// if statement if the variable of object one is equal to teh property and value of object two
						// create a variable called does_it_match and set it as true. 
								// Create if statement if does_it_match is true print does_it_match
								// else prints false 
				// create test variables.
				// run driver code. 

function Match(str1, str2) {
	for (var property in str1){
	for (var key in str2){
		if (property + str1[property] == key + str2[key])
			var does_it_match = true; 
		};
		};
		if (does_it_match == true){
		console.log(does_it_match)
		}
		else {
		console.log(false)
	};
	};

var set1 = {car: "Subaru", name: "Sam", age: 25};
var set2 = {car: "Subaru", name: "Todd", age: 30};
var set3 = {car: "Ford", name: "Tom", age: 22 };

Match(set2, set3) // => False 
Match(set1, set2) // => True 

//PSUEDOCODE
//RELEASE 2: Create a function that takes an integer for length and returns an array of strings of the given length.
	// create a function that takes an integer as the parameter 
		// create two variables. One will list all the possible letters it can chose from the other will be an array with the parameter in it
		// loop through the array variable. 
			// have the parameter being looped be equal to the possible letter variable. Use substr command and Math.random command to randomly pick which letter will be taken.
				//substr will pick and return the character the math.random will pick a random index numbre to recieve the .substr
			// print the new array 
	// Run driver code

function numtoarray(integer) {
	var letters = "abcdefghijklmnopqrstuvwxyz"
	var lengtharray = [integer]

	for (var i = 0; i < int; i++) {
		lengtharray[i] = letter.substr(Math.floor(Math.random() * 14) + 2);
		console.log(lengtharray);
	}


}

// Stumped on how to get past this part :/


