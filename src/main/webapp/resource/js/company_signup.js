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
    if (!validateBusinessNumber(data.company_no)) {
        return false;
    }

    if (!validatePassword(data.password)) {
        return false;
    }
    
    return true;
}

function validateBusinessNumber(businessNumber) {
    const businessNumberRegex = /^\d{10}$/;
    if (!businessNumberRegex.test(businessNumber)) {
        alert('올바른 사업자 번호 형식이 아닙니다.');
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

function validateEstablishedDate(establishedDate) {
    const dateRegex = /^\d{4}-\d{2}-\d{2}$/;
    if (!dateRegex.test(establishedDate)) {
        alert('올바른 생년월일 형식으로 입력해주세요 (예: 1990-01-01).');
        return false;
    }
    return true;
}

function validateEmployeeCount(employeeCount) {
    const count = parseInt(employeeCount);
    if (isNaN(count) || count < 0) {
        alert('올바른 직원 수를 입력해주세요.');
        return false;
    }
    return true;
}

function validateWebsite(website) {
    const urlRegex = /^(http|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?$/;
    if (!urlRegex.test(website)) {
        alert('올바른 홈페이지 주소 형식으로 입력해주세요.');
        return false;
    }
    return true;
}

function validateZipcode(zipcode) {
    const zipcodeRegex = /^\d{5}$/;
    if (!zipcodeRegex.test(zipcode)) {
        alert('올바른 우편번호 형식이 아닙니다.');
        return false;
    }
    return true;
}

function validateAddress(address) {
    if (!address) {
        alert('주소를 입력해주세요.');
        return false;
    }
    return true;
}

function validateCompanyDescription(companyDescription) {
    if (!companyDescription) {
        alert('기업소개를 입력해주세요.');
        return false;
    }
    return true;
}
