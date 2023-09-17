CREATE SEQUENCE address_seq
	START WITH 1 INCREMENT BY 1;

INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '서울');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '경기');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '인천');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '강원');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '대전');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '세종');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '충남');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '충북');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '부산');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '울산');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '경북');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '대구');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '광주');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '전남');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '전북');
INSERT INTO ADDRESS a  VALUES (address_seq.nextval, '제주');

INSERT INTO C_SCALE cs VALUES (1, '대기업');
INSERT INTO C_SCALE cs VALUES (2, '중견기업');
INSERT INTO C_SCALE cs VALUES (3, '중소기업');

INSERT INTO GENDER g VALUES (1, 'male');
INSERT INTO GENDER g VALUES (2, 'female');