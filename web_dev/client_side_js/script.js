var img = document.getElementsByTagName('img');
var p = document.getElementById('one');
var img_button = document.getElementById('img-button');
var txt_button = document.getElementById('txt-button');

function img_click (event) {
	console.log("Click detected.");
	console.log(event);
	img[0].style.border = "2px dashed blue";
}

function txt_click (event) {
	console.log("Click detected.");
	console.log(event);
	p.outerText = "I have been manipulated by Javascript."
}

img_button.addEventListener("click", img_click);
txt_button.addEventListener("click", txt_click);