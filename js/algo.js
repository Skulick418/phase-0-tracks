//PSUEDOCODE
//RELEASE 0:




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