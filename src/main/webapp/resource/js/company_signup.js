console.log("🖐️company_signup.js");
async function company_sigup(e) {
	e.preventDefault();
	
	// form 데이터 구성
	const form = e.target;
	
	const address = form.address.value;
	const addr1 = address.split(' ', 1).join();
	const addr2 = address.substring(addr1.length);
	
	const loginData = {
			company_no : form.company_no.value,
			password : form.password.value,
			name : form.name.value,
			esta : form.esta.value,
			scale : form.scale.value,
			employee_no : form.employee_no.value,
			ceo : form.ceo.value,
			url : form.url.value,
			address : addr1,
			detail_addr : (addr2 + form.addretc.value).trim(),
			content : form.content.value,
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
			body : new URLSearchParams(loginData).toString(),
		});
		
		// 응답 메시지
		const jsonData = await response.json();
		console.table(jsonData);
		
		// 회원 가입 성공
		if(jsonData.result == "success"){
			alert('회원가입 성공!');
			location = jsonData.url;
		// 실패
		} else if(jsonData.result == "fail") alert('회원가입을 실패하였습니다.');
		
	// 오류 발생
	} catch (error) {
		console.error("Error:", error);
		alert('알 수 없는 이유로 로그인 실패..');
	}
}