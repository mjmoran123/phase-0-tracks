//PSEUDOCODE SOLUTION TO R0 -- LONGEST STRING IN ARRAY
 // - initialize a variable (maxString) to a blank string that will hold the longest string
 // - iterate (FOR loop based on index in array that terminates based on length of array) through the given array and compute the length of each string as you encounter it
 // - compare the length of the current string to the length of the string in the maxString variable
 // - at the end of the iteration, return the string in maxString.
 // - note that if there are two or more words that are the max and have same number of characters, my code will return the first such word. 

function maxLength(array){
	var maxString = "";
	for(var i = 0; i < array.length; i++){
		if (array[i].length > maxString.length){
			maxString = array[i];
		}
	}
	return maxString;
}

// PSEUDOCODE SOLUTION TO R1 -- KEY-VALUE MATCH
//  - iterate through each of the keys in the first object to compare against each key in the second object
//  	- use a nested FOR loop to check each of the keys in the second object against the key in the first object. then move to check each of the keys in the second against the next key in the first.
//  	- IF a match of keys is found, then check values
//  		- IF the values match, then return TRUE as we only need to check for one

function keyValMatch(obj1, obj2){
	for(key in obj1){
		for(otherKey in obj2){
			if(key == otherKey && obj1[key] == obj2[otherKey]){
				
			return true;
			}
		}
		
	}
	return false;
}

// PSEUDOCODE SOLUTION TO R2 -- RANDOM TEST DATA
//  - to generate random words we will just create a string "abcdefghijklmnopqrstuvwxyz" and randomly generate an int from 0 to 25 to pull a random char from the string
//  	- just concat to an empty string to create these words with as a random number of characters, as specified in prob statement (1 to 10 chars)
//  - we will run a loop to do the above as many times as are input
//  - add each of these words to an empty array as you go.
//  - return array

function randString(){
	alphabet = "abcdefghijklmnopqrstuvwxyz";
	lengthOfString = Math.floor((Math.random() * 10) + 1);
	retString = "";
	for(var i = 0; i < lengthOfString; i++){
		randChar = Math.floor(Math.random() * 26);
		retString += alphabet.substr(randChar, 1);
	}
	return retString;
}

function randArray(numOfStrings){
	retArray = [];
	for(var j = 0; j < numOfStrings; j++){
		retArray.push(randString());
	}
	return retArray;
}

//DRIVER CODE
//console.log(maxLength(["a", "abc", "abcdefg", "dog", "doggy", "abcdef", "abcdefghijkl"]));
//console.log(maxLength(["1", "11111", "2222", "333333", "444444444444444444444444444444", "55", "666", "7777"]));
// var a = {name:"Rhonda", color:"orange"};
// var b = {name:"garfield", color:"orange"};
// var c = {name: "ALF", color:"burnt sienna", planet:"melmac"};
// var d = {name:"Rhonda", color:"brown", planet: "melmac"};
// console.log(keyValMatch(a,b));
// console.log(keyValMatch(c,d));
// console.log(keyValMatch(a,d));
// console.log(keyValMatch(c,a));
//console.log(randString());
// console.log(randArray(0));
// console.log(randArray(1));
// console.log(randArray(2));
// console.log(randArray(3));
// console.log(randArray(4));
// console.log(randArray(5));
// console.log(randArray(6));
// console.log(randArray(7));
// console.log(randArray(8));
// console.log(randArray(9));
// console.log(randArray(10));
for(var i = 0; i < 10; i++){
	var a = randArray(5);
	console.log(a);
	console.log(maxLength(a));
}

