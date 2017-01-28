/*

-input: a string
-for each letter in the string, back to front:
	-put the letter on the end of a new string
-output: the new string

*/

function reverse(string) {
	var reversed = '';
	for (var i = string.length-1; i >= 0; i--) {
		reversed += string[i];
	}
	return reversed;
}


//console.log(reverse('hello'));

var result = reverse('Hello world');

if (true) {
	console.log(result);
}