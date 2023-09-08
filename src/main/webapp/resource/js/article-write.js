console.log("🖐️singup.js");
document.form.onsubmit = async (e) => {
	e.preventDefault();
	// Form 데이터 구성
	const form = e.target;
	console.log(e);
	
	const job_val = [];
	form.job.forEach((el)=> {
		if(el.checked){
			job_val.push(el.value);
		}
	});
	
	const siteimgData = {
			title : form.title.value,
			salary : form.salary.value,
			need_amt : form.need_amt.value,
			job_explain : form.job_explain.value,
			qualify : form.qualify.value,
			deadline : form.deadline.value,
			location : form.location.value + "추가",
			job : job_val,
			carr : form.carr.value,
			stack : form.stack.value,
	}
	//form.submit();
	console.log(siteimgData);
	
}