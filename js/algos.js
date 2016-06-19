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

//DRIVER CODE
console.log(maxLength(["a", "abc", "abcdefg", "dog", "doggy", "abcdef"]));
console.log(maxLength(["1", "11111", "2222", "333333", "444444444444444444444444444444", "55", "666", "7777"]));