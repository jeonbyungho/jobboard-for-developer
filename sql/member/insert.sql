SELECT * FROM MEMBER;

-- 회원 추가
INSERT INTO "MEMBER" m (
	m.ID , m.USERID, m.PASSWORD, 
	m.NAME, m.GENDER, m.BIRTHDAY, 
	m.PHONE, m.EMAIL, m.ADDRESS, 
	m.DETAIL_ADDR)
	VALUES (
		member_seq.nextval
	,	'admin'
	,	'admin1234'
	,	'고길동'
	,	'male'
	,	'1980-08-11'
	,	'01023456789'
	,	'admin@ex.net'
	,	'서울특별시 강남구 역삼동 819-10'
	,	'세경빌딩 3층'
);

-- 회원 추가
INSERT INTO "MEMBER" m (
	m.ID , m.USERID, m.PASSWORD, 
	m.NAME, m.GENDER, m.BIRTHDAY, 
	m.PHONE, m.EMAIL, m.ADDRESS, 
	m.DETAIL_ADDR)
	VALUES (
		member_seq.nextval
	,	'dog'
	,	'dog1234'
	,	'강아지'
	,	'female'
	,	'2020-11-11'
	,	'01023456789'
	,	'dog@ex.com'
	,	'서울특별시 강남구 역삼동 819-10'
	,	'세경빌딩 3층'
);

-- 회원 추가
INSERT INTO "MEMBER" m (
	m.ID , m.USERID, m.PASSWORD, 
	m.NAME, m.GENDER, m.BIRTHDAY, 
	m.PHONE, m.EMAIL, m.ADDRESS, 
	m.DETAIL_ADDR)
	VALUES (
		member_seq.nextval
	,	'cat'
	,	'cat1234'
	,	'고양이'
	,	'male'
	,	'2021-01-15'
	,	'01023456789'
	,	'cat@ex.com'
	,	'서울특별시 강남구 역삼동 819-10'
	,	'세경빌딩 3층'
);