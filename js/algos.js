function longest_phrase(phrases) {
	longest = '';
	for(var i = 0; i < phrases.length; i++) {
		if (phrases[i].length > longest.length) {
			longest = phrases[i];
		}
	}
	return longest;
}

console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));