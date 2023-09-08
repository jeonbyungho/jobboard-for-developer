console.log("🖐️singup.js");
document.signupForm.onsubmit = async (e) => {
	e.preventDefault();
	// Form 데이터 구성
	const form = e.target;
	const loginData = {
			userid : form.userid.value,
			password : form.password.value,
			name : form.name.value,
			gender : form.gender.value,
			birthday : form.birthday.value,
			phone : form.phone.value,
			email : form.email.value,
			address : form.address.value,
			detail_addr : (form.detail_addr.value + form.addretc.value).trim(),
		}
	console.log(form.action, loginData);
	
	// POST 요청
	try {
		// 실행
		response = await fetch(form.action, {
			method : "POST",
			headers : {
				"Content-Type": "application/x-www-form-urlencoded;charset=utf-8",
			},
			body : new URLSearchParams(loginData).toString(),
		});
		
		// 성공시
		const result = await response.json();
		console.log(result);
		
		const resultMessage = result.result.trim();
		if(resultMessage == "success"){
			alert('회원가입 성공!');
			location = result.url;
		} else if(resultMessage == "fail"){
			alert('무슨 이유로 실패함..');
		}
		
	// POST 요청 도중 에러 발생 시..
	} catch (error) {
		console.error("Error:", error);
		alert('알 수 없는 이유로 로그인 실패..');
	}
}