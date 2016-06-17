var colors = ["blue", "raspberry ombre", "green", "silver sparkles"];
var names = ["Ed", "Sea", "Work", "Saw"];

colors.push("red");
names.push("Jerry");

console.log(colors);
console.log(names);

var horses = {};
for(var i = 0; i < names.length; i++){
	horses[names[i]] = colors[i];
}

console.log(horses);

function Car(make, model, color, year, runsWell) {
	
	this.make = make;
	this.model = model;
	this.color = color;
	this.year = year;
	this.runsWell = runsWell;
	
	
	this.honk = function() { console.log("Beep! Beep!"); };
	
}

var toyota = new Car("Toyota", "Prius", "Red", 2020, false);
var honda = new Car("Honda", "Civic", "Grey", 1997, true);
toyota.honk();
honda.honk();
console.log(toyota.model);
console.log(toyota.length);

for(horse in horses){
	console.log(horse + "=>" + horses[horse]);
}