-- 회원 테이블 생성
CREATE TABLE MEMBER(
		id 			NUMBER(20,0)
	,	userid 		VARCHAR2(100)
	,	password 	VARCHAR2(100)
	,	name 		VARCHAR2(100)
	,	gender 		VARCHAR2(100)
	,	birthday 	VARCHAR2(100)
	,	phone 		VARCHAR2(100)
	,	email 		VARCHAR2(100)
	,	address 	VARCHAR2(100)
	,	detail_addr VARCHAR2(100)
	,	photo 		VARCHAR2(100)
);
-- 시퀀스 생성
CREATE SEQUENCE member_seq
	START WITH 1 INCREMENT BY 1;
	

-- 회원 테이블 생성
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