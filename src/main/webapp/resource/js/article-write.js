console.log("👌article-write");

document.myForm.onsubmit = (e) => {
	e.preventDefault();
	const form = e.target;
	const local = form.addr.value + " " + form.addrdetail.value + " " + form.addretc.value;
	
	form.location.value = local;
	console.log(form.location.value, local);
	form.submit();
};