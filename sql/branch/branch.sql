-- 주소 테이블
CREATE TABLE address (
      id         number(6)   PRIMARY KEY 
   ,   district   varchar2(6)
);

CREATE SEQUENCE address_seq
   START WITH 1 INCREMENT BY 1;

-- 회원 테이블
CREATE TABLE MEMBER(
      id         number(6)   PRIMARY KEY
   ,   user_id      varchar2(16)
   ,   password   varchar2(20) 
   ,   name      varchar2(10) 
   ,   gender_id   varchar2(4) 
   ,   birthday   date
   ,   phone      varchar2(12)
   ,   email      varchar2(10)
   ,   address_id   number(6) 
   ,   detail_addr   varchar2(13)
   ,   FOREIGN KEY(address_id) REFERENCES address (id)
);

-- 회원 시퀀스
CREATE SEQUENCE member_seq
   START WITH 1 INCREMENT BY 1;
   
-- 이력서 테이블
CREATE TABLE resume(
      id         number(6)   PRIMARY KEY 
   ,   member_id   number(6)
   ,   career       varchar2(10) 
   ,   portfolio   varchar2(50)
   ,   FOREIGN KEY(member_id) REFERENCES MEMBER (id)
);

-- 이력서 시퀀스
CREATE SEQUENCE resume_seq
   START WITH 1 INCREMENT BY 1;
   
-- 자격증 테이블
CREATE TABLE licence (
      id         number(6)   PRIMARY KEY 
   ,   resume_id   number(6)
   ,   title       varchar2(20)
   ,   FOREIGN KEY(resume_id) REFERENCES resume(id)
);

-- 이력서 시퀀스
CREATE SEQUENCE licence_seq
   START WITH 1 INCREMENT BY 1;
   
-- 학교 테이블
CREATE TABLE school (
      id         number(6)   PRIMARY KEY 
   ,   member_id   number(6)
   ,   slevel      varchar2(5)
   ,   name       varchar2(12)
   ,   department   varchar2(15)
   ,   status       varchar2(8)
   ,   grade       number(4,2)
   ,   FOREIGN KEY(member_id) REFERENCES MEMBER(id)
);

-- 학교 시퀀스
CREATE SEQUENCE school_seq
   START WITH 1 INCREMENT BY 1;
   
-- 학교 테이블
CREATE TABLE reg (
      id         number(6)   PRIMARY KEY 
   ,   resume_id   number(6)
   ,   name      varchar2(12)
   ,   job          varchar2(8)
   ,   swork_day   date
   ,   ework_day   DATE
   ,   FOREIGN KEY(resume_id) REFERENCES resume(id)
);

-- 학교 시퀀스
CREATE SEQUENCE reg_seq
   START WITH 1 INCREMENT BY 1;
-------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE "COMPANY"(
    "id" number(6),
    "company_no" number(15),
    "password" varchar2(20),
    "name" varchar2(10),
    "esta" DATE,
    "c_scale_id" number(6),
    "employee_no" number(6),
    "ceo" varchar2(10),
    "url" varchar2(20),
    "address_id" number(6),
    "detail_addr" varchar2(13),
    "content" varchar2(200),
    PRIMARY key("id"),
    FOREIGN KEY ("address_id") REFERENCES address (id)
);


SELECT * FROM "COMPANY";

CREATE TABLE "job"(
    "id" NUMBER(6) PRIMARY KEY,
    "type" VARCHAR2(12)
);


DROP TABLE "job";
SELECT * FROM "job";

CREATE TABLE "article" (
    "id" NUMBER(6),
    "company_id" NUMBER(6),
    "job_id" VARCHAR2(20),
    "career" VARCHAR2(5),
    "salary" NUMBER(10),
    "address_id" NUMBER(6),
    "detail_addr" VARCHAR2(13),
    "need_amt" NUMBER(4),
    "job_explain" VARCHAR2(200),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("address_id") REFERENCES address (id)
);

ALTER TABLE "article" MODIFY "job_id" NUMBER(6);
ALTER TABLE "article" ADD CONSTRAINT fk_article_job
    FOREIGN KEY ("job_id") REFERENCES "job" ("id");

SELECT * FROM "article";

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

ALTER TABLE "COMPANY" ADD CONSTRAINT fk_company_c_scale
    FOREIGN KEY ("c_scale_id") REFERENCES "c_scale" ("id");


SELECT * FROM "skill_stack";