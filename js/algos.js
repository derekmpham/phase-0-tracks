//PSEUDOCODE

//LONGEST PHRASE FUNCTION
//create new empty array variable
//create loop (i.e. with var index starting at 0, until index equates to length of array, index++) to evaluate each index
	//determine length of each string in array
	//push length values into new empty array
//create variable that equates to longest string in array (incorporate Math.max() function using spread operator)
//create variable that equates to index of longest string in array
//return element based on index of longest string in array (index = variable created in line 9)

function longestPhrase(array) {
	var phrase_lengths = [];
	for (var i = 0; i < array.length; i++) {
		phrase_lengths.push(array[i].length);
		}
		var right_phrase = Math.max(...phrase_lengths);
		var indexof_rightphrase = phrase_lengths.indexOf(right_phrase)
		return array[indexof_rightphrase]
}

//DRIVER CODE
console.log(longestPhrase(["hello", "hi", "sup"])); //--> expect "hello"
console.log(longestPhrase(["hola", "bonjour", "hello"])); //-->expect "bonjour"
console.log(longestPhrase(["Sup", "Hello", "What's happening brotha?"])); //-->expect "What's happening brotha?"