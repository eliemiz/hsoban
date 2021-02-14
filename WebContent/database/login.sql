CREATE TABLE ACCOUNT (
	ACCOUNT_ID NUMBER,
	NAME VARCHAR2(100),
	ID VARCHAR2(100),
	PASS VARCHAR2(100),
	BIRTHDAY DATE,
	GENDER CHAR(3),
	POST NUMBER,
	ADDRESS VARCHAR2(300),
	ADDRESS2 VARCHAR2(300),
	EMAIL VARCHAR2(100),
	PHONE CHAR(13),
	PHONE2 VARCHAR2(20),
	MAIL_RECV CHAR(1) CONSTRAINT MAIL_RECV_CK CHECK (MAIL_RECV IN ('0', '1')),
	SMS_RECV CHAR(1) CONSTRAINT SMS_RECV_CK CHECK (SMS_RECV IN ('0', '1')),
	CONSTRAINT ACCOUNT_PK PRIMARY KEY (ACCOUNT_ID)
);
-- 비밀번호 찾기(휴대폰 번호로 찾기)
SELECT pass, name, phone FROM account WHERE name='홍길동' AND phone='010-1234-5678';
SELECT pass, name, phone FROM account WHERE name='김하나' AND phone='010-2345-6789';
SELECT pass, name, phone FROM account WHERE name='성춘향' AND phone='010-3456-7890';
SELECT pass, name, phone FROM account WHERE name='이몽룡' AND phone='010-4567-8901';
SELECT pass, name, phone FROM account WHERE name='최두나' AND phone='010-5678-9012';
SELECT pass, name, phone FROM account;

-- 비밀번호 찾기(이메일로 찾기)
SELECT pass, name, email FROM account WHERE name='홍길동' AND email='gildong@gmail.com';
SELECT pass, name, email FROM account WHERE name='김하나' AND email='hana123@gmail.com';
SELECT pass, name, email FROM account WHERE name='성춘향' AND email='chun@naver.com';
SELECT pass, name, email FROM account WHERE name='이몽룡' AND email='mongmong@naver.com';
SELECT pass, name, email FROM account WHERE name='최두나' AND email='dududu@hanmail.net';
SELECT pass, name, email FROM account;

-- 아이디 찾기(휴대폰 번호로 찾기)
SELECT id, name, phone FROM account WHERE name='홍길동' AND phone='010-1234-5678';
SELECT id, name, phone FROM account WHERE name='김하나' AND phone='010-2345-6789';
SELECT id, name, phone FROM account WHERE name='성춘향' AND phone='010-3456-7890';
SELECT id, name, phone FROM account WHERE name='이몽룡' AND phone='010-4567-8901';
SELECT id, name, phone FROM account WHERE name='최두나' AND phone='010-5678-9012';
SELECT id, name, phone FROM account;

-- 아이디 찾기(이메일로 찾기)
SELECT id, name, email FROM account WHERE name='홍길동' AND email='gildong@gmail.com';
SELECT id, name, email FROM account WHERE name='김하나' AND email='hana123@gmail.com';
SELECT id, name, email FROM account WHERE name='성춘향' AND email='chun@naver.com';
SELECT id, name, email FROM account WHERE name='이몽룡' AND email='mongmong@naver.com';
SELECT id, name, email FROM account WHERE name='최두나' AND email='dududu@hanmail.net';
SELECT id, name, email FROM account;

-- 로그인
SELECT id, pass FROM account WHERE id='gildong' AND pass='gil123!!';
SELECT id, pass FROM account WHERE id='hana123' AND pass='kim123!!';
SELECT id, pass FROM account WHERE id='chunl' AND pass='sung123@';
SELECT id, pass FROM account WHERE id='mongs' AND pass='lee111@@';
SELECT id, pass FROM account WHERE id='choi2' AND pass='duna000!!';
SELECT id, pass FROM account;

-- 회원가입
INSERT INTO account values(1,'홍길동','gildong','gil123!!','2020-01-15','남','05023',
	'서울특별시 광진구 광나루로30다길 24-5','302호','gildong@gmail.com','010-1234-5678','02-1234-5678','0','1');
INSERT INTO account VALUES(2,'김하나','hana123','kim123!!','2020-02-13','여','06652',
	'서울특별시 서초구 반포대로 58','1002호','hana123@gmail.com','010-2345-6789','070-2345-6789','1','1');
INSERT INTO account VALUES(3,'성춘향','chunl','sung123@@','2009-03-03','여','63621',
'제주특별자치도 서귀포시 남원읍 남원광지로 5','에덴아파트 803호','chun@naver.com','010-3456-7890','070-3456-7890','0','1');
INSERT INTO account VALUES(4,'이몽룡','mongs','lee111@@','2019-11-13','남','16203','경기도 수원시 장안구 경수대로 1028',
	'수원빌딩','mongmong@naver.com','010-4567-8901','031-4567-8910','0','0');
INSERT INTO account VALUES(5,'최두나','choi2','duna000!!','2021-09-10','여','62451','광주광역시 광산구 상무대로 53-11',
	'','dududu@hanmail.net','010-5678-9012','062-5678-9012','1','0');
SELECT * FROM ACCOUNT;

