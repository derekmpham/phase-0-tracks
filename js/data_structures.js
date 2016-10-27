//WORK WITH ARRAYS
var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Misty", "Farrow", "Blackie"];

colors.push("orange");
names.push("Comet");


//BUILD AN OBJECT
var coloredHorse = {}

for (var i = 0; i < names.length; i++) {
	coloredHorse[names[i]] = colors[i];
}


//BUILD MANY OBJECTS USING A CONSTRUCTOR
//CAR CONSTRUCTOR FUNCTION
// var car = {name: "Mustang", year: 2015, isFast: true}; -->this is a sample input

function Car(name, year, isFast) {
	console.log("Our car:", this);
	this.name = name;
	this.year = year;
	this.isFast = isFast;
	this.horn = function() {console.log("Beep beep!"); };
}


//DRIVER CODE
console.log(colors);
console.log(names);
console.log(coloredHorse);

var newCar = new Car("Prius", 2016, false);
console.log(newCar);
var anotherCar = new Car("Mustang", 2015, true);
console.log(anotherCar);
newCar.horn();
anotherCar.horn();

