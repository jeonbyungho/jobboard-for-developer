function validateForm() {
            let title = document.forms["myForm"]["title"].value;
            let salary = document.forms["myForm"]["salary"].value;
            let postcode = document.forms["myForm"]["zipcode"].value;
            let address = document.forms["myForm"]["address"].value;
            let detailAddr = document.forms["myForm"]["detail_addr"].value;
            let needAmt = document.forms["myForm"]["need_amt"].value;
            let deadline = document.forms["myForm"]["deadline"].value;
            let jobExplain = document.forms["myForm"]["job_explain"].value;
            let qualify = document.forms["myForm"]["qualify"].value;
            
            let job = document.myForm.job;
            let jobChecked = false;
			let career = document.myForm.career;
			let careerChecked = false;
			let stack = document.myForm.stack;
			let stackChecked = false;
			
			
            if (title.trim() === "") {
                alert("제목을 입력해주세요");
                return false;
            } else if (!jobChecked) {
				for (let i = 0; i < job.length; i++) {
			        if (job[i].checked) {
			            jobChecked = true;
			            break;
			        } 
			    }
			    if(!jobChecked){
						alert("직무를 선택해주세요");
	                	return false;
				}
			    
			    
            }
            if (!careerChecked) {
				for (let i = 0; i < career.length; i++) {
			        if (career[i].checked) {
			            careerChecked = true;
			            break;
			        } 
			    }
			    if(!careerChecked){
						alert("경력를 선택해주세요");
	                	return false;
				}
               
            }
            if (salary.trim() === "" || isNaN(salary)) {
                alert("급여를 입력해주세요");
                return false;
            } else if (postcode.trim() === "" || address.trim() === "" || detailAddr.trim() === "") {
                alert("주소를 입력해주세요");
                return false;
            } else if (needAmt.trim() === "" || isNaN(needAmt)) {
                alert("모집인원을 입력해주세요");
                return false;
            } else if (deadline.trim() === "") {
                alert("마감일을 선택해주세요");
                return false;
            } else if (jobExplain.trim() === "") {
                alert("직무소개를 입력해주세요");
                return false;
            } else if (qualify.trim() === "") {
                alert("자격요건을 입력해주세요");
                return false;
            }  else if (!stackChecked) {
					for (let i = 0; i < stack.length; i++) {
			        if (stack[i].checked) {
			            stackChecked = true;
			            break; // 하나 이상 선택된 경우 검사 중단
			        }
			        alert("스택을 선택해주세요");
	                return false;
			    }
               
            }

            return true; // Form is valid
        }