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