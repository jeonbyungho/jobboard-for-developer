SELECT
		a."id"
	,	c."name" AS companyname
	,	a."title" AS title
	,	j."type" AS job
	,	a."career" AS career
	,	a."salary" AS salary
	,	CONCAT((SELECT ad.DISTRICT FROM ADDRESS ad WHERE ad.ID = a."id" ), a."detail_addr") AS location
	,	a."need_amt" AS need_amt
	,	a."deadline" AS deadline
	,	a."job_explain" AS job_explain
	,	a.QUALIFY AS qualify
FROM ARTICLE a 
	LEFT OUTER JOIN COMPANY c ON a."company_id" = c."id" 
	LEFT OUTER JOIN "job" j ON a."job_id" = j."id"
--WHERE a."id" = 4
;

INSERT INTO ARTICLE a VALUES (
		ARTICLE_SEQ.nextval
	,	8
	,	(SELECT j."id" FROM "job" j WHERE j."type" = 'ai')
	,	'구인'
	,	'경력'
	,	50000
	,	(SELECT a.ID FROM ADDRESS a WHERE a.DISTRICT = '인천')
	,	'어딘가..'
	,	12
	,	'2023-09-30'
	,	'요구사항을 충족'
	,	'기술'
);