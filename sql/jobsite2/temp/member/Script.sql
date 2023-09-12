SELECT * FROM "MEMBER" m ;

INSERT INTO "MEMBER" m VALUES (
	MEMBER_SEQ.nextval
	,	'test'
	,	'1234'
	,	'이순신'
	,	'male'
	,	'2012-05-02'
	,	'01023456789'
	,	'op@oo.com'
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '서울')
	,	'무슨 아파트'
);

SELECT
	m.ID , m.USER_ID , m.PASSWORD , m.NAME , m.GENDER ,
	m.BIRTHDAY , m.PHONE , m.EMAIL , a.DISTRICT AS address , m.DETAIL_ADDR 
FROM "MEMBER" m 
LEFT OUTER JOIN ADDRESS a
ON m.ADDRESS_ID = a.ID 
WHERE m.USER_ID = 'tester12' AND m.PASSWORD = '4567'
;