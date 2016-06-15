// in order to return a reversed string of the string passed we will
// 	- create a new variable to store the reversed string
// 	- find the length of the given string
// 	- use the length to iterate through the word in reverse order (using the index value of each character in the string character array)
// 	- concat the new variable each iteration through the loop
// 	- exit the loop and return the new string

function reverse(str) {
	var reversedString = "";
	var len = str.length
	for(var i = 1; i <= len; i++){ //start index at 1 to account for zero index of char array
		reversedString += str[len - i];
	}
	return reversedString;
}

var answer = reverse("Fleetomeremoteelf"); //not a palindrome since the first F is capitalized :-)
var lessSnarkyAnswer = reverse("Reallynotapalindrome");

var waterWet = true;

if(waterWet){
	console.log(answer);
	console.log(lessSnarkyAnswer);
}