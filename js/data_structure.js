var colors = ["blue", "green", "red", "yellow"];

var names = ["Ed", "John", "Mike", "Jason"];

names.push("Seabiscuit");

colors.push("orange");

var horse_hash = {}

for (var i = 0; i < colors.length; i++) {
  var new_colors = colors[i];
  var new_names = names[i];
  horse_hash[new_names] = new_colors;
}

console.log(horse_hash);

function Car(make, model, used) {
  console.log("Creating car...", this);
  this.make = make;
  this.model = model;
  this.used = used;
  this.rev_engine = function() { console.log("Vroom"); };

  console.log("New car complete");
} 

var car_one = new Car("Subaru", "Impreza", true);

console.log(car_one);

console.log("This car can rev:");
car_one.rev_engine();

var car_two = new Car("Honda", "Civic", false);

console.log(car_two);

console.log("This car can rev:");
car_two.rev_engine();

var car_three = new Car("BMW", "M3", false);

console.log(car_three);

console.log("This car can rev:");
car_three.rev_engine();