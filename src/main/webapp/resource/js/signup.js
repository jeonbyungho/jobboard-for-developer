console.log("🖐️singup.js");
async function member_sigup(e) {
	e.preventDefault();
	
	// form 데이터 구성
	const form = e.target;
	
	const address = form.address.value;
	const addr1 = address.split(' ', 1).join();
	const addr2 = address.substring(addr1.length);
	
	const loginData = {
			userid : form.userid.value,
			password : form.password.value,
			name : form.name.value,
			gender : form.gender.value,
			birthday : form.birthday.value,
			phone : form.phone.value,
			email : form.email.value,
			address : addr1,
			detail_addr : (addr2 + form.addretc.value).trim(),
		};
	console.log(form.action);
	console.table(loginData);
	
	if(!validateForm(loginData)){
		return false;
	}
	
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

function validateForm(data) {
    if (data.userid.trim() === '') {
        alert('아이디를 입력해주세요.');
        return false;
    }

    if (!validatePassword(data.password)) {
        alert('비밀번호를 입력해주세요.');
        return false;
    }

    if (data.name.trim() === '') {
        alert('이름을 입력해주세요.');
        return false;
    }

    if (!data.gender) {
        alert('성별을 선택해주세요.');
        return false;
    }

    const birthdayRegex = /^\d{4}-\d{2}-\d{2}$/;
    if (!birthdayRegex.test(data.birthday)) {
        alert('올바른 생년월일 형식으로 입력해주세요 (예: 1990-01-01).');
        return false;
    }

    if (!validatePhoneNumber(data.phone)) {
        alert('올바른 휴대폰 번호 형식으로 입력해주세요.');
        return false;
    }

    if (!validateEmail(data.email)) {
        alert('올바른 이메일 주소 형식으로 입력해주세요.');
        return false;
    }

    if (data.address.trim() === '') {
        alert('주소를 입력해주세요.');
        return false;
    }

    return true;
}

function validatePassword(password) {
    const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d).{6,15}$/;
    if (!passwordRegex.test(password)) {
        alert('비밀번호는 영문과 숫자를 모두 포함하고, 6자 이상 15자 이하로 입력하세요.');
        return false;
    }
    return true;
}
function validatePhoneNumber(콜) {
    const phoneRegex = /^\d{10,11}$/;
    return phoneRegex.test(콜);
}

function validateEmail(email) {
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailRegex.test(email);
}