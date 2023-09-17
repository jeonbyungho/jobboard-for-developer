-- 구인글 추가
INSERT INTO article VALUES (
	ARTICLE_SEQ.nextval
	,	1
	,	'테스트'
	,	'경력'
	,	5000
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '경기')
	,	'광주시 역동 176-13'
	,	3
	,	'이런저런 기술이 필요해요'
	,	'2023-09-19'
	,	'급구함'
)
;

INSERT INTO article VALUES (
	ARTICLE_SEQ.nextval
	,	3
	,	'테스트6'
	,	'경력'
	,	70000
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '경기')
	,	'용산구 청파로 378'
	,	1
	,	'아무런 기술이 필요합니다.'
	,	'2023-09-15'
	,	'급구함'
)
;

SELECT
	a.id, c.NAME , a.TITLE , a.CAREER , a.SALARY , a2.DISTRICT , a.DETAIL_ADDR , a.NEED_AMT , a.JOB_EXPLAIN , a.DEADLINE , a.QUALIFY 
FROM ARTICLE a
	LEFT OUTER JOIN COMPANY c ON a.COMPANY_ID = c.ID 
	LEFT OUTER JOIN ADDRESS a2 ON a.ADDRESS_ID = a2.ID 
;

-- 가장 최근에 추가된 구인글
SELECT max(a.ID) FROM ARTICLE a ;
SELECT ARTICLE_SEQ.CURRVAL FROM dual;

-- 직무 추가
INSERT INTO JOB j VALUES (
	JOB_SEQ.nextval
	,	(SELECT max(a.ID) FROM ARTICLE a)
	,	'backend'
)
;
INSERT INTO JOB j VALUES (
	JOB_SEQ.nextval
	,	(SELECT max(a.ID) FROM ARTICLE a)
	,	'ai'
)
;
INSERT INTO JOB j VALUES (
	JOB_SEQ.nextval
	,	(SELECT max(a.ID) FROM ARTICLE a)
	,	'data'
)
;
-- 직무 조회
SELECT * FROM JOB j WHERE j.ARTICLE_ID = (SELECT max(a.ID) FROM ARTICLE a);

-- 스택 추가
INSERT INTO SKILL_STACK ss VALUES (
	SKILL_STACK_SEQ.nextval
	,	(SELECT max(a.ID) FROM ARTICLE a)
	,	'java'
)
;

INSERT INTO SKILL_STACK ss VALUES (
	SKILL_STACK_SEQ.nextval
	,	(SELECT max(a.ID) FROM ARTICLE a)
	,	'spring'
)
;

-- 기술 스택 조회
SELECT * FROM SKILL_STACK ss WHERE ss.ARTICLE_ID = (SELECT max(a.ID) FROM ARTICLE a);
SELECT * FROM SKILL_STACK ss;