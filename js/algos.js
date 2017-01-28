/*
Find the longest phase:

-input: an array of phrases
-start with the "winning" string length at 0
-for each item in the array:
	-check if it is longer than the current "winning" string
	-if it is, set the "winning" string to that string
	-else do nothing (keep the current "winner")
-output: the "winner"
*/

function longest_phrase(phrases) {
	longest = '';
	for(var i = 0; i < phrases.length; i++) {
		if (phrases[i].length > longest.length) {
			longest = phrases[i];
		}
	}
	return longest;
}

/*
Find a key-value pair:

-input: 2 objects
-set the answer to false
-for each key in the first object:
	-check if there's a matching key in the second object
	-if there is, check if the value also matches
	-if it does, set the answer to true
	-if not, do nothing
-output: the answer
*/

function find_pair(o1, o2) {
	found = false;
	for (var key1 in o1) {
		for (var key2 in o2) {
			if (key1 == key2 && o1[key1] == o2[key2]) {
				found = true;
			}
		}
	}
	return found;
}

/*
Generate random strings:

-input: the length of the array
-(input) times, do as follows:
	-start with an empty string
	-a random number of times between 1 and 10 do as follows:
		-pick a random letter of the alphabet and add it to the string
	-add the string to the array
-output: the array
*/

function generate_strings(array_length) {
	alphabet = 'abcdefghijklmnopqrstuvwxyz';
	strings = [];
	for (var i = 0; i < array_length; i++) {
		string = '';
		for (var j = 0; j < Math.floor((Math.random()*10)+1); j++) {
			string += alphabet[Math.floor(Math.random()*(alphabet.length-1))]
		}
		strings.push(string);
	}
	return strings;
}

console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
console.log(longest_phrase(["big", "bigger", "biggest"]));
console.log(longest_phrase(["billions", "billions and billions"]));

console.log(find_pair({name: "Tamir", age: 54}, {name: "Steven", age: 54}));
console.log(find_pair({name: "Tamir", age: 53}, {name: "Steven", age: 54}));

for (var x = 0; x < 10; x++) {
	test_strings = generate_strings(5);
	console.log(longest_phrase(test_strings));
}