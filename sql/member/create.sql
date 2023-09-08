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