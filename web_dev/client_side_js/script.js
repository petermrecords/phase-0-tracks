img = document.getElementsByTagName('img')
p = document.getElementByID('one')
img_button = document.getElementByID('img-button')
txt_button = document.getElementByID('txt-button')

function img_click (event) {
	console.log("Click detected.");
	console.log(event);
	event.target.style.border = "2px dashed blue";
}

img_button.addEventListener("click", img_click);