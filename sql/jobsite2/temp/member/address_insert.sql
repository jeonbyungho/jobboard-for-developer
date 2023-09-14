CREATE SEQUENCE address_seq
	START WITH 1 INCREMENT BY 1;

INSERT INTO address VALUES (address_seq.nextval, '서울');
INSERT INTO address VALUES (address_seq.nextval, '경기');
INSERT INTO address VALUES (address_seq.nextval, '인천');
INSERT INTO address VALUES (address_seq.nextval, '강원');
INSERT INTO address VALUES (address_seq.nextval, '대전');
INSERT INTO address VALUES (address_seq.nextval, '세종');
INSERT INTO address VALUES (address_seq.nextval, '충남');
INSERT INTO address VALUES (address_seq.nextval, '충북');
INSERT INTO address VALUES (address_seq.nextval, '부산');
INSERT INTO address VALUES (address_seq.nextval, '울산');
INSERT INTO address VALUES (address_seq.nextval, '경북');
INSERT INTO address VALUES (address_seq.nextval, '대구');
INSERT INTO address VALUES (address_seq.nextval, '광주');
INSERT INTO address VALUES (address_seq.nextval, '전남');
INSERT INTO address VALUES (address_seq.nextval, '전북');
INSERT INTO address VALUES (address_seq.nextval, '제주');