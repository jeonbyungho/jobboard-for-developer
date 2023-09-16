console.log("resume_test")

//경력 사항
document.getElementById("regPlus").onclick = (e) => {
	e.preventDefault();
	console.log('추가 버튼 클릭');
	const list = document.getElementById('regList');

	const li = document.createElement('li');
	li.setAttribute('class', 'regItem');
	list.appendChild(li);

	li.innerHTML =
		'<input type="text" name="regName" placeholder="회사이름"/>'
		+ '<input type="text" name="regJob" placeholder="직무"/>'
		+ '<input type="date" name="regSday"/>'
		+ '<input type="date" name="regEday"/>'

}
//학력 부분

document.getElementById("schoolPlus").onclick = (e) => {
	e.preventDefault();
	console.log('학교정보추가 버튼 클릭');
	const list = document.getElementById('schoolList');

	const li = document.createElement('li');
	li.setAttribute('class', 'schoolItem');
	list.appendChild(li);

	li.innerHTML =
		'<input type="text" name="schRating" placeholder="학교 등급"/>'
		+ '<input type="text" name="schName" placeholder="대학교이름"/>'
		+ '<input type="text" name="schDepartment" placeholder="학과"/>'
		+ '<input type="text" name="schStatus" placeholder="졸업여부"/>'
		+ '<input type="number" name="schGrade" placeholder="학점"/>'
}

//자격증 부분
document.getElementById("liecencePlus").onclick = (e) => {
	e.preventDefault();
	console.log('자격증 정보 추가 버튼 클릭');
	const list = document.getElementById('liecenceList');

	const li = document.createElement('li');
	li.setAttribute('class', 'liecenceItem');
	list.appendChild(li);

	li.innerHTML =
		'<input type="text" name="lieTitle" placeholder="자격증 명칭"/>'
		+ '<input type="date" name="lieAcquisition"/>'
};
