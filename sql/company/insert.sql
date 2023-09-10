SELECT * FROM COMPANY c
WHERE c.COMPANY_NO = '123456789' AND c.PASSWORD = '1234';

INSERT INTO COMPANY c(
	c.ID , c.COMPANY_NO, c.PASSWORD,
	c.NAME, c.BIRTH, c."type",
	c.EMPLOYEE_NO, c.SALE, c.CEO,
	c.URL, c.ADDR, c.DETAIL_ADDR)
VALUES
	(COMPANY_SEQ.nextval
	,	'78948561872'
	,	'1234'
	,	'우리사원'
	,	'2023-08-10'
	,	'대기업'
	,	'1580'
	,	'8000000'
	,	'박씨네'
	,	'http:localhost:8081'
	,	'서울특별시'
	,	'큰 회사빌딩'
	);