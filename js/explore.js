//PSEUDOCODE: reverse string function
	//create empty string
	//create loop iteration
		//create an index variable that starts at the last character of the word and counts down one at a time for every loop iteration until it reaches 0 (index 0 = first character of word)
		//insert index of word (which starts at the last character of the word) into the empty string for every loop iteration


//REVERSE FUNCTION

function reverse(word) {
	var reversedWord = "";
	for (var i = word.length - 1; i >= 0; i--) {
		reversedWord += word[i];
	}
	return reversedWord;
}

var isTired = true;




//DRIVER CODE
console.log(reverse("hello")); //-->reverse function: expect "olleh"

if (isTired) {
	console.log(reverse("hello")); //add silly conditional statement: expect "olleh"
}