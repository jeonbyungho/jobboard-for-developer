-- 기업 규모 데이터 추가
INSERT INTO "c_scale" VALUES (1, '대기업');
INSERT INTO "c_scale" VALUES (2, '중견기업');
INSERT INTO "c_scale" VALUES (3, '중소기업');

-- 기업 로그인
SELECT
	c."id" , c."company_no" , c."password",
	c."name" , c."esta" , cs."title" AS scale,
	c."employee_no" , c."ceo" , c."url" ,
	a.DISTRICT AS address, c."detail_addr" ,
	c."content"
FROM COMPANY c
LEFT OUTER JOIN ADDRESS a 
	ON c."address_id" = a.ID 
LEFT OUTER JOIN "c_scale" cs 
	ON c."c_scale_id" = cs."id"
WHERE c."company_no" = '12345678' AND c."password" = '1234'
;

-- 기업 회원가입
INSERT INTO COMPANY c VALUES(
	COMPANY_SEQ.nextval
	,	'12345678'
	,	'1234'
	,	'회사'
	,	'2023-09-11'
	,	(SELECT cs."id" FROM "c_scale" cs WHERE cs."title" = '대기업')
	,	1500
	,	'이회장'
	,	'http://localhost:8080'
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '서울')
	,	'무슨 건물'
	,	'ㅇㅅㅇ'
);

INSERT INTO COMPANY c VALUES(
	COMPANY_SEQ.nextval
	,	'98765432'
	,	'asdf'
	,	'식당'
	,	'2000-03-12'
	,	(SELECT cs."id" FROM "c_scale" cs WHERE cs."title" = '중소기업')
	,	3
	,	'마사장'
	,	'http://localhost:8080'
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '경기')
	,	'무슨 건물'
	,	'ㅇㅅㅇ'
);