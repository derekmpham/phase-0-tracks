//PSEUDOCODE

//LONGEST PHRASE FUNCTION
//create function that takes in array
//create new empty array variable
//create loop (i.e. with var index starting at 0, until index equates to length of array, index++) to evaluate each index
	//determine length of each string in array
	//push length values into new empty array
//create variable that equates to longest string in array (incorporate Math.max() function using spread operator)
//create variable that equates to index of longest string in array
//return element based on index of longest string in array (index = variable created in line 9)

//KEY-VALUE MATCH FUNCTION
//create function that takes in two objects
//create loop (i.e. with var value in first object) that takes value in first object and sees if it matches/corresponds with value second object (includes same location)
	//if a value in second object matches with value in first object (use hasOwnProperty method) and the locations for both values are the same (use index)
		//return true
	//else
		//return false

//RANDOM TEST DATA FUNCTION
//create function that takes in an integer
//create empty array variable (will push/"upload" strings into it later)
//create variable that equates to all letters of the alphabet (will randomly select letters from it later)
//create loop (i.e. with var index starting at 0, until index equates to input integer, index ++) to generate a random string for each index
	//create empty string variable (will insert random string into it once we generate random string)
	//create another index-based loop (i.e. with var i starting at 0, until i <= 9 (have to randomly generate max for i: 0 <= i <= 9), i++)
		//create variable that chooses random letters (from alphabet variable in line 24)
		//insert line 28 variable into empty string variable (line 26 variable) using +=
	//push (.push) resulting string variable into array variable
//return array


//LONGEST PHRASE FUNCTION
function longestPhrase(array) {
	var phrase_lengths = []; //-->new empty array variable
	for (var i = 0; i < array.length; i++) { //-->loop: finds length of each string
		phrase_lengths.push(array[i].length);
		}
	var right_phrase = Math.max(...phrase_lengths); //-->identifies longest string
	var indexof_rightphrase = phrase_lengths.indexOf(right_phrase) //-->indexes longest string
	return array[indexof_rightphrase] //prints longest string
}


//KEY-VALUE MATCH FUNCTION
function keyValueMatch(object1, object2) {
	for (var value in object1){ //checking through entire first object to see if any value matches/corresponds with a value in second object
		if (object2.hasOwnProperty(value) && object1[value] === object2[value]) { //-->the "meat" of the check process
			return true;
		}
	}
	return false; //-->when there's no matches (must be placed after checking through ENTIRE object)
}


//RANDOM TEST DATA FUNCTION
function randomData (length) {
	var output = [];
	var letters = "abcdefghijklmnopqrstuvwxyz"; //-->we'll choose letters from this variable in line 64
	for (index = 0; index < length; index++) { //-->building an array
		var string = ""
		for (i = 0; i < Math.floor(Math.random() * 10) + 1; i++) { //-->building a string
			var randomLetter = letters[Math.floor(Math.random() * 26)];
			string += randomLetter; //-->pushing randomly chosen letter into string variable
		}
		output.push(string); //-->pushing string variable into array variable
	}
	return output;
}






//DRIVER CODE

//LONGEST PHRASE FUNCTION
console.log(longestPhrase(["hello", "hi", "sup"])); //--> expect "hello"
console.log(longestPhrase(["hola", "bonjour", "hello"])); //-->expect "bonjour"
console.log(longestPhrase(["Sup", "Hello", "What's happening brotha?"])); //-->expect "What's happening brotha?"

//KEY-VALUE MATCH FUNCTION
console.log(keyValueMatch({name: "Michael Jordan", height: "6 feet 6 inches"}, {name: "Kobe Bryant", height: "6 feet 6 inches"})); //-->expect true
console.log(keyValueMatch({name: "Michael Jordan", championships: 6}, {name: "Kobe Bryant", championships: 5})); //-->expect false

//RANDOM TEST DATA FUNCTION
console.log(randomData(3)) //-->expect 3 random strings of random lengths
console.log(randomData(5)) //-->expect 5 random strings of random lengths

//CONSOLIDATE BOTH RANDOM TEST DATA AND LONGEST PHRASE FUNCTIONS

