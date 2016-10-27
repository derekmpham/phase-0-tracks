var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Misty", "Farrow", "Blackie"];

colors.push("orange");
names.push("Comet");

var coloredHorse = {}

for (var i = 0; i < names.length; i++) {
	coloredHorse[names[i]] = colors[i];
}


//DRIVER CODE
console.log(colors);
console.log(names);
console.log(coloredHorse);