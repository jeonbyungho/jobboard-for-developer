console.log("resume_test")

document.getElementById("regPlus").onclick = (e)=>{
	e.preventDefault();
	console.log('추가 버튼 클릭');
	const list = document.getElementById('regList');
	
	const li = document.createElement('li');
	li.setAttribute('class','regItem');
	list.appendChild(li);
	
	li.innerHTML =
		'<input type="text" name="regName" placeholder="회사이름"/>'
		+	'<input type="text" name="regJob" placeholder="직무"/>'
		+	'<input type="date" name="regSday"/>'
		+	'<input type="date" name="regEday"/>'
}