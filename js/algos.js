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
//create loop (i.e. with var value in first object) that takes value in first object and sees if it corresponds with value second object (includes same location)
	//if a value in second object mathces with value in first object (use hasOwnProperty method) and the locations for both values are the same (use index)
		//return true
	//else
		//return false




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
function keyvalue_match(object1, object2) {
	for (var value in object1){
		if (object2.hasOwnProperty(value) && object1[value] === object2[value]) {
			return true;
		}
		else {
			return false;
		}
	}
}




//DRIVER CODE

//LONGEST PHRASE FUNCTION
console.log(longestPhrase(["hello", "hi", "sup"])); //--> expect "hello"
console.log(longestPhrase(["hola", "bonjour", "hello"])); //-->expect "bonjour"
console.log(longestPhrase(["Sup", "Hello", "What's happening brotha?"])); //-->expect "What's happening brotha?"

//KEY-VALUE MATCH FUNCTION
console.log(keyvalue_match({name: "Michael Jordan", height: "6 feet 6 inches"}, {name: "Kobe Bryant", height: "6 feet 6 inches"})); //-->expect true
console.log(keyvalue_match({name: "Michael Jordan", championships: 6}, {name: "Kobe Bryant", championships: 5})); //-->expect false