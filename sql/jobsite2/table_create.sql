-- 주소 테이블 생성
CREATE TABLE address (
    id NUMBER(6) PRIMARY KEY,
    district VARCHAR2(10)
);

-- 성별 테이블 생성
CREATE TABLE gender (
    id NUMBER(6) PRIMARY KEY,
    title VARCHAR2(8)
);

-- 회사 규모 테이블 생성
CREATE TABLE c_scale (
    id NUMBER(6) PRIMARY KEY,
    title VARCHAR2(20)
);

-- 회사 테이블 생성
CREATE TABLE COMPANY (
    id NUMBER(6),
    company_no NUMBER(15),
    password VARCHAR2(20),
    name VARCHAR2(20),
    esta DATE,
    c_scale_id NUMBER(6), -- c_scale 테이블의 id에 대한 외래 키
    employee_no NUMBER(6),
    ceo VARCHAR2(10),
    url VARCHAR2(20),
    address_id NUMBER(6),
    detail_addr VARCHAR2(60),
    content VARCHAR2(200),
    PRIMARY KEY (id),
    FOREIGN KEY (address_id) REFERENCES address (id),
    FOREIGN KEY (c_scale_id) REFERENCES c_scale (id)
);

-- 기사 테이블 생성 (title과 deadline 추가)
CREATE TABLE article (
    id NUMBER(6),
    company_id NUMBER(6),
    title VARCHAR2(20), -- 새로운 열: title
    career VARCHAR2(5),
    salary NUMBER(10),
    address_id NUMBER(6),
    detail_addr VARCHAR2(20),
    need_amt NUMBER(4),
    job_explain VARCHAR2(200),
    deadline DATE, -- 새로운 열: deadline
    qualify	varchar2(60),
    PRIMARY KEY (id),
    FOREIGN KEY (address_id) REFERENCES address (id),
    FOREIGN KEY (company_id) REFERENCES COMPANY (id)
);

-- 스킬 스택 테이블 생성
CREATE TABLE skill_stack (
    id NUMBER(6),
    article_id NUMBER(6),
    name VARCHAR2(20),
    PRIMARY KEY (id),
    FOREIGN KEY (article_id) REFERENCES article (id)
);

-- 직무 테이블 생성 (기본 키)
CREATE TABLE job (
    id NUMBER(6),
    article_id NUMBER(6),
    name VARCHAR2(20),
    PRIMARY KEY (id),
    FOREIGN KEY (article_id) REFERENCES article (id)
);

-- 회원 테이블 생성
CREATE TABLE MEMBER (
    id NUMBER(6),
    user_id VARCHAR2(20),
    password VARCHAR2(20),
    name VARCHAR2(20),
    gender_id NUMBER(6), -- gender 테이블의 id에 대한 외래 키
    birthday VARCHAR2(30),
    phone VARCHAR2(20),
    email VARCHAR2(30),
    address_id NUMBER(6),
    detail_addr VARCHAR2(60),
    PRIMARY KEY (id),
    FOREIGN KEY (address_id) REFERENCES address(id),
    FOREIGN KEY (gender_id) REFERENCES gender(id)
);

-- 이력서 테이블 생성
CREATE TABLE resume (
    id NUMBER(6),
    member_id NUMBER(6),
    career VARCHAR2(20),
    portfolio VARCHAR2(50),
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES MEMBER(id)
);

-- 라이센스 테이블 생성
CREATE TABLE liecence (
    id NUMBER(6),
    resume_id NUMBER(6),
    title VARCHAR2(30),
    PRIMARY KEY (id),
    FOREIGN KEY (resume_id) REFERENCES resume (id)
);

-- 학교 테이블 생성
CREATE TABLE school (
    id NUMBER(6),
    member_id NUMBER(6),
    Rating VARCHAR2(20),
    name VARCHAR2(30),
    department VARCHAR2(20),
    status VARCHAR2(20),
    grade NUMBER(4,2),
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES MEMBER (id)
);

-- 보내기 테이블 생성
CREATE TABLE send (
    id NUMBER(6) PRIMARY KEY,
    company_id NUMBER(6), -- company 테이블의 id에 대한 외래 키
    resume_id NUMBER(6), -- resume 테이블의 id에 대한 외래 키
    FOREIGN KEY (company_id) REFERENCES COMPANY (id),
    FOREIGN KEY (resume_id) REFERENCES resume (id)
);

-- 경력 테이블 생성
CREATE TABLE reg (
    id NUMBER(6),
    resume_id NUMBER(6),
    name VARCHAR2(20),
    job VARCHAR2(20),
    swork_day DATE,
    ework_day DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (resume_id) REFERENCES resume (id)
);

-- article_seq 시퀀스 생성
CREATE SEQUENCE article_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

-- member_seq 시퀀스 생성
CREATE SEQUENCE member_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

-- company_seq 시퀀스 생성
CREATE SEQUENCE company_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

-- school_seq 시퀀스 생성
CREATE SEQUENCE school_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

-- reg_seq 시퀀스 생성
CREATE SEQUENCE reg_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;
   
-- reg_seq 시퀀스 생성
CREATE SEQUENCE skill_stack_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;
   
-- reg_seq 시퀀스 생성
CREATE SEQUENCE job_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;
