-- 회원 가입
INSERT INTO "MEMBER" m VALUES (
	MEMBER_SEQ.nextval
	,	'test1'
	,	'test1234'
	,	'박과장'
	,	(SELECT g.ID FROM GENDER g WHERE g.TITLE = 'male')
	,	'1990-09-12'
	,	'01078945612'
	,	'user@ex.kor'
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '서울')
	,	'서초구 신반포로 194'
);

-- 회원 로그인
SELECT 
	m.ID , m.USER_ID , m.PASSWORD, m.NAME,
	g.TITLE AS GENDER , m.BIRTHDAY , m.EMAIL,
	a.DISTRICT AS ADDRESS, m.DETAIL_ADDR 
FROM "MEMBER" m 
LEFT OUTER JOIN ADDRESS a 
	ON m.ADDRESS_ID = a.ID 
LEFT OUTER JOIN GENDER g 
	ON m.GENDER_ID = g.ID 
WHERE m.USER_ID = #{userid} AND m.PASSWORD = #{password}
;

-- 기업 회원가입
INSERT INTO COMPANY c VALUES (
	COMPANY_SEQ.nextval
	,	'123456789'
	,	'c1234'
	,	'테스트회사'
	,	'2023-09-12'
	,	(SELECT cs.ID FROM C_SCALE cs WHERE cs.TITLE = '중견기업')
	,	100
	,	'김사장'
	,	'http:localhost'
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '경기')
	,	'수원시 영통구 도청로 30'
	,	'테스트 계정입니다.'
)
;

-- 기업 로그인
SELECT
	c.ID , c.COMPANY_NO , c.PASSWORD ,
	c.NAME , c.ESTA , cs.TITLE  AS SCALE,
	c.EMPLOYEE_NO , c.CEO , c.URL ,
	a.DISTRICT  AS address , c.DETAIL_ADDR ,
	c.CONTENT 
FROM COMPANY c 
LEFT OUTER JOIN ADDRESS a 
	ON c.ADDRESS_ID = a.ID 
LEFT OUTER JOIN C_SCALE cs 
	ON c.C_SCALE_ID = cs.ID 
WHERE c.COMPANY_NO = '741852963' AND c.PASSWORD = '123456'