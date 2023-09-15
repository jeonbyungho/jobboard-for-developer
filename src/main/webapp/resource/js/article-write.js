console.log("👌article-write");
document.myForm.onsubmit = async function article_wirte(e) {
	e.preventDefault();
	
	const form = e.target;
	
	const address = form.address.value;
	const addr1 = address.split(' ', 1).join();
	const addr2 = address.substring(addr1.length);
	
	const career = []
	form.career.forEach((e)=> {
		if(e.checked) career.push(e.value)
	});
	const job = []
	form.job.forEach((e)=> {
		if(e.checked) job.push(e.value)
	});
	const stack = []
	form.stack.forEach((e)=> {
		if(e.checked) stack.push(e.value)
	});
	
	const ArticleWriteData = {
			title : form.title.value,
			job : job,
			stack : stack,
			career : career,
			salary : form.salary.value,
			need_amt : form.need_amt.value,
			deadline : form.deadline.value,
			job_explain : form.job_explain.value,
			qualify : form.qualify.value,
			address : addr1,
			detail_addr : (addr2 + form.detail_addr.value + form.addretc.value).trim(),
		};
	console.log(form.action);
	console.table(ArticleWriteData);
	
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
			alert('작성 완료');
			location = jsonData.url;
		// 실패
		} else if(jsonData.result == "fail") alert('작성 실패.');
		
	// 오류 발생
	} catch (error) {
		console.error("Error:", error);
		alert('알 수 없는 에러 발생!');
	}
}