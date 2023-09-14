CREATE TABLE "COMPANY"(
    "id" number(6),
    "company_no" number(15),
    "password" varchar2(20),
    "name" varchar2(10),
    "esta" DATE,
    "c_scale_id" varchar2(15),
    "employee_no" number(6),
    "ceo" varchar2(10),
    "url" varchar2(20),
    "address_id" number(6),
    "detail_addr" varchar2(13),
    "content" varchar2(200),
    PRIMARY key("id"),
    FOREIGN KEY ("address_id") REFERENCES "ADDRESS" ("ID")
);

SELECT * FROM "COMPANY";

CREATE TABLE article (
    "id" NUMBER(6),
    "company_id" NUMBER(6),
    "job_id" NUMBER(6),
    "title" VARCHAR2(100),
    "career" VARCHAR2(5),
    "salary" NUMBER(10),
    "address_id" NUMBER(6),
    "detail_addr" VARCHAR2(13),
    "need_amt" NUMBER(4),
    "deadline" date,
    "del" NUMBER(4),
    "job_explain" VARCHAR2(200),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("company_id") REFERENCES COMPANY ("id"),
    FOREIGN KEY ("job_id") REFERENCES "job" ("id"),
    FOREIGN KEY ("address_id") REFERENCES address (id)
);

ALTER TABLE article MODIFY "job_id" NUMBER(6);
ALTER TABLE article ADD CONSTRAINT fk_article_job
    FOREIGN KEY ("job_id") REFERENCES "job" ("id");

SELECT * FROM "article";

CREATE TABLE "job"(
    "id" NUMBER(6) PRIMARY KEY,
    "type" VARCHAR2(12)
);


DROP TABLE "job";
SELECT * FROM "job";

CREATE TABLE "skill_stack"(
	"id" number(6),
	"article_id" number(6),
	"name" varchar2(12),
	PRIMARY key("id"),
	FOREIGN KEY ("article_id") REFERENCES "article" ("id")
);

SELECT * FROM "skill_stack";

CREATE TABLE "c_scale"(
	"id" number(6),
	"title" varchar2(10),
	PRIMARY KEY("id")
);

ALTER TABLE COMPANY ADD CONSTRAINT fk_company_c_scale
    FOREIGN KEY (c_scale_id) REFERENCES c_scale (id);


SELECT * FROM "skill_stack";

CREATE TABLE "MEMBER" (
    "id" NUMBER(6),
    "user_id" VARCHAR2(100),
    "password" VARCHAR2(100),
    "name" VARCHAR2(100),
    "gender_id" VARCHAR2(100),
    "birthday" VARCHAR2(100),
    "phone" VARCHAR2(100),
    "email" VARCHAR2(100),
    "address_id" number(6),
    "detail_id" VARCHAR2(100),
    PRIMARY key("id")
);
ALTER TABLE "MEMBER" ADD CONSTRAINT fk_member_address
    FOREIGN KEY ("address_id") REFERENCES "address"("id");



SELECT * FROM "MEMBER";

CREATE TABLE "resume" (
    "id" NUMBER(6),
    "member_id" NUMBER(6),
    "career" VARCHAR2(10),
    "portfolio" VARCHAR2(50),
    PRIMARY KEY("id"),
    FOREIGN KEY("member_id") REFERENCES "MEMBER"("id")
);

SELECT * FROM "resume";

CREATE TABLE "liecence" (
    "id" NUMBER(6),
    "resume_id" NUMBER(6),
    "title" VARCHAR2(20),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("resume_id") REFERENCES "resume" ("id")
);

SELECT * FROM "liecence";

CREATE TABLE "school" (
    "id" NUMBER(6),
    "member_id" NUMBER(6),
    "level" VARCHAR2(5),
    "name" VARCHAR2(12),
    "department" VARCHAR2(15),
    "status" VARCHAR2(8),
    "grade" NUMBER(4,2),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("member_id") REFERENCES "MEMBER" ("id")
);

SELECT * FROM "school";

CREATE TABLE "reg" (
    "id" NUMBER(6),
    "resume_id" NUMBER(6),
    "name" VARCHAR2(12),
    "job" VARCHAR2(8),
    "swork_day" DATE,
    "ework_day" DATE,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("resume_id") REFERENCES "resume" ("id")
);

SELECT * FROM "reg";

CREATE TABLE "address" (
	"id" number(6) PRIMARY KEY,
	"district" varchar2(6)
);

SELECT * FROM "address";

CREATE TABLE "gender" (
	"id" number(6) PRIMARY KEY,
	"title" varchar2(10)
);

SELECT * FROM "gender";



CREATE TABLE "ARTICLE" 
   (   "ID" NUMBER(20,0),
      "TITLE" VARCHAR2(100),
   "JOB" VARCHAR2(100), 
   "CAREER" VARCHAR2(100), 
   "SALARY" VARCHAR2(100), 
   "LOCATION" VARCHAR2(100), 
   "NEED_AMT" VARCHAR2(100), 
   "DEADLINE" VARCHAR2(100), 
   "JOB_EXPLAIN" VARCHAR2(100), 
   "QUALIFY" VARCHAR2(100), 
   "TAG_STACK" VARCHAR2(100)
   );
 
CREATE SEQUENCE article_seq
   START WITH 1 INCREMENT BY 1 NOCACHE;
   
  
  SELECT * FROM "ARTICLE";
  
 
 -----
 CREATE TABLE MEMBER(
		id			number(20,0)
	,	user_id		varchar2(16)
	,	password	varchar2(20) 
	,	name		varchar2(10) 
	,	gender_id	varchar2(4) 
	,	birthday	date
	,	phone		varchar2(12)
	,	email		varchar2(10)
	,	address_id	number(6) 
	,	detail_addr	varchar2(13)
);

CREATE SEQUENCE member_seq
	START WITH 1 INCREMENT BY 1;
	
CREATE TABLE "COMPANY" 
   (	"ID" NUMBER(20,0), 
	"COMPANY_NO" VARCHAR2(100), 
	"PASSWORD" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"BIRTH" VARCHAR2(100), 
	"type" VARCHAR2(100), 
	"EMPLOYEE_NO" VARCHAR2(100), 
	"SALE" VARCHAR2(100), 
	"CEO" VARCHAR2(100), 
	"URL" VARCHAR2(100), 
	"ADDR" VARCHAR2(100), 
	"DETAIL_ADDR" VARCHAR2(100)
   );
   
  CREATE SEQUENCE company_seq
	START WITH 1 INCREMENT BY 1;
	

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
	


CREATE TABLE send (
    "id" NUMBER(6),
    "resume_id" NUMBER(6),
    "company_id" NUMBER(6),
    PRIMARY KEY ("id")
);

SELECT * FROM send;


