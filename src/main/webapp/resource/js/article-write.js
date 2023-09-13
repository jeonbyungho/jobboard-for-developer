console.log("👌article-write");

//document.myForm.onsubmit = (e) => {
//	e.preventDefault();
//	const form = e.target;
//	let formdata = new FormData();
//	
//	formdata.append('job',['모바일', '프론트엔드', '풀스택', '백엔드', '데이터', '언리얼엔진', 'AI', '기타'])
//	formdata.get('job');
//	
//	formdata.append('carr', ['신입', '경력', '인턴']);
//	formdata.get('carr');
//	
//	formdata.append('stack', ['Java', 'Spring Boot', 'Spring', 'Android', 'Unreal5', 'MySQL', 'PHP', 'AJAX', 'MSSQL', 'JSP', 'Flutter', 'Python', 'R', 'Pytorch', 'Tensorflow']);
//	formdata.get('stack');
//	
//	let values = formdata.values();
//	for (const pair of values) {
//	    console.log(pair); 
//}
//	
//	fetch('https://localhost/article/', {
//    method: 'POST',
//    cache: 'no-cache',
//    body: formdata // body 부분에 폼데이터 변수를 할당
//})
//};

	async function article_wirte(e) {
	e.preventDefault();
	
	// form 데이터 구성
	const form = e.target;
	
	let formData = new FormData(document.getElementById("form"));
	
	const address = form.address.value;
	const addr1 = address.split(' ', 1).join();
	const addr2 = address.substring(addr1.length);
	const job1 = formData.append('job',['모바일', '프론트엔드', '풀스택', '백엔드', '데이터', '언리얼엔진', 'AI', '기타']);
	
	
	
	const carr1 = formData.append('carr', ['신입', '경력', '인턴']);
	const stack1 = formData.append('stack', ['Java', 'Spring Boot', 'Spring', 'Android', 'Unreal5', 'MySQL', 'PHP', 'AJAX', 'MSSQL', 'JSP', 'Flutter', 'Python', 'R', 'Pytorch', 'Tensorflow']);
	
	const ArticleWriteData = {
			title : form.title.value,
			job : job1,
			carr : carr1,
			salary : form.salary.value,
			need_amt : form.need_amt.value,
			deadline : form.deadline.value,
			job_explain : form.job_explain.value,
			qualify : form.qualify.value,
			stack : stack1,
			address : addr1,
			detail_addr : (addr2 + form.detail_addr.value + form.addretc.value).trim(),
		};
	console.log(form.action);
	console.table(loginData);
	
	// 회원가입 요청
	try {
		response = await fetch(form.action, {
			method : "POST",
			headers : {
				"Content-Type": "application/x-www-form-urlencoded;charset=utf-8",
			},
			body : new URLSearchParams(ArticleWriteData).toString(),
		});
		
		// 응답 메시지
		const jsonData = await response.json();
		console.table(jsonData);
		
		// 회원 가입 성공
		if(jsonData.result == "success"){
			alert('aaaa');
			location = jsonData.url;
		// 실패
		} else if(jsonData.result == "fail") alert('회원가입을 실패하였습니다.');
		
	// 오류 발생
	} catch (error) {
		console.error("Error:", error);
		alert('bbbb');
	}
}