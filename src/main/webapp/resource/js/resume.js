console.log("resume.js");

// 링크 클릭 시 스크롤 처리
document.querySelectorAll('a.BtnType.con_link').forEach(anchor => {
	anchor.addEventListener('click', function(e) {
		e.preventDefault();
		const targetId = this.getAttribute('href').substring(1);
		const targetElement = document.getElementById(targetId);
		if (targetElement) {
			window.scrollTo({
				top: targetElement.offsetTop,
				behavior: 'smooth'
			});
		}
	});
});

// Career 부분의 버튼과 리스트를 다루는 코드
const careerEditButton = document.querySelector("#career .editButton");
const careerDeleteButton = document.querySelector("#career .deleteButton");
const careerList = document.querySelector("#careerList");

careerEditButton.addEventListener("click", () => {
	const careerInputElement = document.getElementById("CAREER");
	const careerListItem = document.createElement("li");
	careerListItem.innerHTML = `
        <input type="checkbox">
        ${careerInputElement.value}
    `;
	careerList.appendChild(careerListItem);
	careerInputElement.value = ""; // 입력 필드 초기화
});

careerDeleteButton.addEventListener("click", () => {
	const careerCheckboxes = careerList.querySelectorAll("input[type='checkbox']");

	careerCheckboxes.forEach(checkbox => {
		if (checkbox.checked) {
			const careerListItem = checkbox.parentElement;
			careerListItem.remove();
		}
	});
});

// 학력 추가/삭제 버튼과 리스트를 다루는 코드
const schoolEditButton = document.querySelector("#school_end .editButton");
const schoolDeleteButton = document.querySelector("#school_end .deleteButton");
const schoolList = document.querySelector("#school_endList");

schoolEditButton.addEventListener("click", () => {
	const schoolInputElement = document.getElementById("SCHOOL");
	const schoolListItem = document.createElement("li");

	const rating = document.createElement("input");
	rating.setAttribute('name', 'rating');

	const schoolName = document.createElement("input");
	schoolName.setAttribute('name', 'schoolName');

	const department = document.createElement("input");
	department.setAttribute('name', 'department');

	const status = document.createElement("input");
	status.setAttribute('name', 'status');

	const grade = document.createElement("input");
	grade.setAttribute('name', 'grade');

	schoolListItem.innerHTML = `
        <input type="checkbox">
        ${schoolInputElement.value}
    `;
	schoolListItem.appendChild(schoolRatingInput);
	schoolListItem.appendChild(schoolNameInput);
	schoolListItem.appendChild(departmentInput);
	schoolListItem.appendChild(statusInput);
	schoolListItem.appendChild(gradeInput);
	schoolInputElement.value = ""; // 입력 필드 초기화
});

schoolDeleteButton.addEventListener("click", () => {
	const schoolCheckboxes = schoolList.querySelectorAll("input[type='checkbox']");

	schoolCheckboxes.forEach(checkbox => {
		if (checkbox.checked) {
			const schoolListItem = checkbox.parentElement;
			schoolListItem.remove();
		}
	});
});

// 포트폴리오 추가/삭제 버튼과 리스트를 다루는 코드
const portfolioEditButton = document.querySelector("#portfolio .editButton");
const portfolioDeleteButton = document.querySelector("#portfolio .deleteButton");
const portfolioList = document.querySelector("#portfolioList");

portfolioEditButton.addEventListener("click", () => {
	const portfolioInputElement = document.getElementById("PORTFOLIO");
	const portfolioListItem = document.createElement("li");
	portfolioListItem.innerHTML = `
        <input type="checkbox">
        ${portfolioInputElement.value}
    `;
	portfolioList.appendChild(portfolioListItem);
	portfolioInputElement.value = ""; // 입력 필드 초기화
});

portfolioDeleteButton.addEventListener("click", () => {
	const portfolioCheckboxes = portfolioList.querySelectorAll("input[type='checkbox']");

	portfolioCheckboxes.forEach(checkbox => {
		if (checkbox.checked) {
			const portfolioListItem = checkbox.parentElement;
			portfolioListItem.remove();
		}
	});
});

// 경력 사항 추가/삭제 버튼과 리스트를 다루는 코드
const regDateEditButton = document.querySelector("#reg_date .editButton");
const regDateDeleteButton = document.querySelector("#reg_date .deleteButton");
const regDateList = document.querySelector("#reg_dateList");

regDateEditButton.addEventListener("click", () => {
	const regDateInputElement = document.getElementById("REG_DATE");
	const regDateListItem = document.createElement("li");

	const regname = document.createElement("input");
	regname.setAttribute('name', 'regName');

	const regJob = document.createElement("input");
	regJob.setAttribute('name', 'regJob');

	const regSword_day = document.createElement("input");
	regSword_day.setAttribute('name', 'regSword_day');

	const regEword_day = document.createElement("input");
	regEword_day.setAttribute('name', 'regEword_day');

	regDateListItem.innerHTML = `
        <input type="checkbox">
        ${regDateInputElement.value}
    `;
	regDateList.appendChild(regDateListItem);
	regDateListItem.append(regName);
	regDateListItem.append(regJob);
	regDateListItem.append(regSword_day);
	regDateListItem.append(regEword_day);
	regDateInputElement.value = ""; // 입력 필드 초기화
});

regDateDeleteButton.addEventListener("click", () => {
	const regDateCheckboxes = regDateList.querySelectorAll("input[type='checkbox']");

	regDateCheckboxes.forEach(checkbox => {
		if (checkbox.checked) {
			const regDateListItem = checkbox.parentElement;
			regDateListItem.remove();
		}
	});
});

// 보유 자격증 추가/삭제 버튼과 리스트를 다루는 코드
const licenseEditButton = document.querySelector("#license .editButton");
const licenseDeleteButton = document.querySelector("#license .deleteButton");
const licenseList = document.querySelector("#licenseList");

licenseEditButton.addEventListener("click", () => {
	const licenseInputElement = document.getElementById("LICENCE");
	const licenseListItem = document.createElement("li");

	const titleInput = document.createElement("input");
	titleInput.setAttribute('name', 'licenseTitle');
	licenseListItem.innerHTML = `
        <input type="checkbox">
        ${licenseInputElement.value}
    `;
	licenseList.appendChild(licenseListItem);
	licenseListItem.appendChild(titleInput);
	licenseInputElement.value = ""; // 입력 필드 초기화
});

licenseDeleteButton.addEventListener("click", () => {
	const licenseCheckboxes = licenseList.querySelectorAll("input[type='checkbox']");

	licenseCheckboxes.forEach(checkbox => {
		if (checkbox.checked) {
			const licenseListItem = checkbox.parentElement;
			licenseListItem.remove();
		}
	});
});


//// 폼 제출 버튼 선택
//const submitButton = document.querySelector(".result");
//
//// 폼 제출 이벤트 핸들러 등록
//submitButton.addEventListener("click", function(e) {
//	// 각 필드의 값을 가져와서 검증
//	const careerValue = document.getElementById("CAREER").value.trim();
//	const schoolValue = document.getElementById("SCHOOL").value.trim();
//	const portfolioValue = document.getElementById("PORTFOLIO").value.trim();
//	const regDateValue = document.getElementById("REG_DATE").value.trim();
//	const licenceValue = document.getElementById("LICENCE").value.trim();
//
//	if (!careerValue || !schoolValue || !portfolioValue || !regDateValue || !licenceValue) {
//		// 하나 이상의 필드가 비어 있을 경우 제출을 중단하고 에러 메시지 표시
//		alert("모든 항목을 입력해주세요.");
//		e.preventDefault(); // 제출 중단
//	}
//});

//// resume.js
//
//function validateCareer() {
//	var careerTag = document.getElementById("CAREER");
//
//	if (careerTag.value === "") {
//		alert("직군을 입력하세요");
//		careerTag.focus();
//	}
//}
//
//function validateSchool() {
//	var schoolTag = document.getElementById("SCHOOL");
//
//	if (schoolTag.value === "") {
//		alert("학력을 입력하세요");
//		schoolTag.focus();
//	}
//}
//
//function validatePortfolio() {
//	var portfolioTag = document.getElementById("PORTFOLIO");
//
//	if (portfolioTag.value === "") {
//		alert("포트폴리오를 입력하세요");
//		portfolioTag.focus();
//	}
//}
//
//function validateRegDate() {
//	var regDateTag = document.getElementById("REG_DATE");
//
//	if (regDateTag.value === "") {
//		alert("경력 사항을 입력하세요");
//		regDateTag.focus();
//	}
//}
//
//function validateLicence() {
//	var licenceTag = document.getElementById("LICENCE");
//
//	if (licenceTag.value === "") {
//		alert("자격증 정보를 입력하세요");
//		licenceTag.focus();
//	}
//}
//



