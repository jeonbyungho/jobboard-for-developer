console.log("👌article-write");

document.myForm.onsubmit = (e) => {
	e.preventDefault();
	const form = e.target;
	let formdata = new FormData(document.getElementById("form"));
	
	formdata.append()
	
	form.submit();
};