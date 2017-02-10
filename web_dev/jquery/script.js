$(document).ready(function() {
	//create a list of <divs> to shuffle
	var $divs = [$('#red'), $('#orange'), $('#yellow'), $('#green'), $('#blue'), $('#purple'), $('#white')]
	var ids = ['red', 'orange', 'yellow', 'green', 'blue', 'purple', 'white']
	//shuffle <divs> on keypress
	$(document).keypress(function() {
		for (var i = 0; i < $divs.length; i++) {
			$divs[i].hide();
		}
		for (var i = 0; i < ids.length; i++) {
			var j = Math.floor(Math.random()*(ids.length-1))
			var i1 = ids[i]
			var i2 = ids[j]
			ids[i] = i2
			ids[j] = i1
		}
		for (var i = 0; i < $divs.length; i++) {
			$divs[i].attr('id', ids[i]);
		}
		for (var i = 0; i < $divs.length; i++) {
			$divs[i].fadeIn('slow');
		}
	});
});