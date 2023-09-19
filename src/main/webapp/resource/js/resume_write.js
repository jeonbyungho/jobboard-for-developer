// 학교 정보 추가
document.getElementById("schoolPlus").onclick = (e) => {
    e.preventDefault();
    console.log('학교 정보 추가 버튼 클릭');

    const list = document.getElementById('schoolList');

    const li = document.createElement('li');
    li.setAttribute('class', 'schoolItem');

    // 학교 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="schRating" placeholder="학교 등급"/>'
        + '<input type="text" name="schName" placeholder="학교명"/>'
        + '<input type="text" name="schDepartment" placeholder="학과"/>'
        + '<input type="text" name="schStatus" placeholder="졸업 여부"/>'
        + '<input type="number" name="schGrade" placeholder="학점"/>';

    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};

// 경력 정보 추가
document.getElementById("regPlus").onclick = (e) => {
    e.preventDefault();
    console.log('경력 정보 추가 버튼 클릭');

    const list = document.getElementById('regList');

    const li = document.createElement('li');
    li.setAttribute('class', 'regItem');

    // 경력 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="regName" placeholder="회사 이름"/>'
        + '<input type="text" name="regJob" placeholder="직무"/>'
        + '<input type="date" name="regSday"/>'
        + '<input type="date" name="regEday"/>';

    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};

// 자격증 정보 추가
document.getElementById("liecencePlus").onclick = (e) => {
    e.preventDefault();
    console.log('자격증 정보 추가 버튼 클릭');

    const list = document.getElementById('liecenceList');

    const li = document.createElement('li');
    li.setAttribute('class', 'liecenceItem');

    // 자격증 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="lieTitle" placeholder="자격증 명칭"/>'
        + '<input type="date" name="lieAcquisition"/>';
        
        
// 포트폴리오 정보 추가
document.getElementById("portfolioPlus").onclick = (e) => {
    e.preventDefault();
    console.log('포트폴리오 정보 추가 버튼 클릭');

    const list = document.getElementById('portfolioList');

    const li = document.createElement('li');
    li.setAttribute('class', 'portfolioItem');

    // 포트폴리오 정보 입력 폼을 생성하여 <li>에 추가
    li.innerHTML =
        '<input type="text" name="portfolioURL" placeholder="포트폴리오 URL"/>';

    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};


    // 삭제 버튼을 생성하여 <li>에 추가
    const deleteButton = document.createElement('button');
    deleteButton.textContent = '삭제';
    deleteButton.addEventListener('click', function() {
        // 클릭한 삭제 버튼의 부모 노드(<li>) 삭제
        list.removeChild(li);
    });
    li.appendChild(deleteButton);

    // <li>를 <ul>에 추가
    list.appendChild(li);
};

document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form[name='resumeForm']");
    const submitButton = document.querySelector("#submit");

    // 폼 제출 이벤트를 가로챌 때 폼 검증 함수 실행
    form.addEventListener("submit", function(event) {
        if (!validateForm()) {
            event.preventDefault(); // 폼 제출을 중지
        }
    });

    // 폼 필드 검증 함수
    function validateForm() {
        // 각 필드에 대한 값을 가져와서 검증
        const titleField = document.querySelector("input[name='title']");
        const portfolioField = document.querySelector("input[name='portfolio']");
        const regField = document.querySelector("ul#regList");
        const schoolField = document.querySelector("ul#schoolList");
        const liecenceField = document.querySelector("ul#liecenceList");
        const selfField = document.querySelector("textarea[name='self_intro']");

        let isValid = true; // 폼이 유효한지를 나타내는 변수

        // 각 필드별로 검증하고 메시지 출력
        if (titleField.value.trim() === "") {
            alert("이력서 제목을 입력해주세요.");
            isValid = false;
        }
        else if (portfolioField.value.trim() === "") {
            alert("포트폴리오 주소를 입력해주세요.");
            isValid = false;
        }
        else if (regField.children.length === 0) {
            alert("경력을 입력해주세요.");
            isValid = false;
        }
        else if (schoolField.children.length === 0) {
            alert("학교 정보를 입력해주세요.");
            isValid = false;
        }
        else if (liecenceField.children.length === 0) {
            alert("자격증 정보를 입력해주세요.");
            isValid = false;
        }
        else if (selfField.value.trim() === "") {
            alert("자기소개를 입력해주세요.");
            isValid = false;
        }

        return isValid; // 모든 필드가 채워져 있으면 true 반환
    }
});


