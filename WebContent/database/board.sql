-- 후기게시판 테이블 생성
CREATE TABLE REVIEW_LIST (
	REVIEW_ID NUMBER,
	PRODUCT_ID NUMBER,
	ATTACH_PRODUCT VARCHAR2(200),
	COLOR VARCHAR2(50),
	TITLE VARCHAR2(300),
	ACCOUNT_ID NUMBER,
	ACCOUNT_NAME VARCHAR2(50),
	POSTING_DATE DATE,
	VIEWS NUMBER,
	ATTACH VARCHAR2(200),
	CONSTRAINT REVIEW_LIST_PK PRIMARY KEY (REVIEW_ID)
);
-- 후기글 
INSERT INTO REVIEW_LIST VALUES (1, 1000100, 'bowl.jpg', '진그레이', '만족합니다.', 100012, 'temp123',
   '2021/02/08', 13, null);
INSERT INTO REVIEW_LIST VALUES (2, 1000300, 'other.jpg', '그린', '만족합니다.', 100065, 'temp',
   '2021/02/08', 15, null);
INSERT INTO REVIEW_LIST VALUES (3, 1000400, 'mug.jpg', '베이지', '귀여워요.', 100090, 'ijk230',
   '2021/02/08', 13, null);
-- 후기글 테이블 생성
CREATE TABLE REVIEW (
	REVIEW_ID NUMBER,
	PRODUCT_ID NUMBER,
	ATTACH_PRODUCT VARCHAR2(200),
	COLOR VARCHAR2(50),
	TITLE VARCHAR2(300),
	CONTENT VARCHAR2(4000),
	ACCOUNT_ID NUMBER,
	ID VARCHAR2(200),
	POSTING_DATE DATE,
	VIEWS NUMBER,
	ATTACH VARCHAR2(200),
	CONSTRAINT REVIEW_PK PRIMARY KEY (REVIEW_ID)
);
-- 후기글추가
INSERT INTO REVIEW VALUES (1, 1000100, 'bowl.jpg', '진그레이', '만족합니다.', '마음에 듭니다. 컬러가 예쁩니다.
 재구매의사있습니다~', 100012, 'temp123', '2021/02/08', 13, null);
-- 후기수정
UPDATE REVIEW SET
CONTENT = '튼튼합니다.'
WHERE ACCOUNT_ID = 100012 AND REVIEW_ID=3;
-- 후기삭제
DELETE FROM REVIEW 
WHERE ACCOUNT_ID = 100012 AND REVIEW_ID=3;
-- 댓글 테이블 생성
CREATE TABLE COMMENTS (
    REVIEW_ID NUMBER,
    COMMENTS_ID NUMBER,
	ID VARCHAR2(200),
	COMMENTS_PASS NUMBER,
	CONTENT VARCHAR2(4000),
	CONSTRAINT REVIEW_PK PRIMARY KEY (COMMENTS_ID)
);

-- 공지게시판 테이블 생성 
CREATE TABLE NOTICE_LIST (
	NOTICE_ID NUMBER,
	TITLE VARCHAR2(300),
	ACCOUNT_ID NUMBER,
	ACCOUNT_NAME VARCHAR2(50),
	POSTING_DATE DATE,
	VIEWS NUMBER,
	CONSTRAINT NOTICE_LIST_PK PRIMARY KEY (NOTICE_ID)
);
-- 공지게시판
INSERT INTO NOTICE_LIST VALUES (1,'화소반 고객 감사 이벤트', 1, '운영자', '2021/02/03', 130);
INSERT INTO NOTICE_LIST VALUES (2,'화소반 고객 감사 이벤트', 1, '운영자', '2021/02/05', 120);
INSERT INTO NOTICE_LIST VALUES (3,'2021년 설 연휴 이전 배송이 2월10일 마감되어 15일 이후 발송됩니다.', 
1, '운영자', '2021/02/03', 130);
-- 공지글테이블 생성 
CREATE TABLE NOTICE (
	NOTICE_ID NUMBER,
	TITLE VARCHAR2(300),
	CONTENT VARCHAR2(4000),
	ACCOUNT_ID NUMBER,
	ID VARCHAR2(200),
	POSTING_DATE DATE,
	VIEWS NUMBER,
	ATTACH VARCHAR2(200),
	CONSTRAINT NOTICE_PK PRIMARY KEY (NOTICE_ID)
);
-- 공지글
INSERT INTO NOTICE VALUES (1,'화소반 고객 감사 이벤트', '화소반 그릇과 함께 상차림 한 걸 올려주시면 저희가 7명께
롱팟 스테이크접시 사각원찬기 小 긴일자찬기를 드립니다!!많이 참여해 주세요^^', 1, '운영자', '2021/02/03', 130, 'event.jpg');
-- 공지수정
UPDATE NOTICE SET
CONTENT = '화소반 고객 감사 1차 이벤트'
WHERE ACCOUNT_ID = 1 AND NOTICE_ID=1;
-- 공지삭제
DELETE FROM NOTICE 
WHERE ACCOUNT_ID = 1 AND NOTICE_ID=1;
SELECT * FROM NOTICE;

-- 문의게시판 테이블 생성
CREATE TABLE QNA_LIST (
	QNA_ID NUMBER,
	PRODUCT_ID NUMBER,
	TITLE VARCHAR2(300),
	ACCOUNT_ID NUMBER,
	ACCOUNT_NAME VARCHAR2(50),
	POSTING_DATE DATE,
	VIEWS NUMBER,
	CONSTRAINT QNA_LIST_PK PRIMARY KEY (QNA_ID)
);
-- 문의게시판
INSERT INTO QNA_LIST VALUES (1, 1000100, 'Re: 입고문의', 1, '운영자', '2021/02/08', 13);
INSERT INTO QNA_LIST VALUES (2, 1000100, '입고문의', 100090, '홍길동', '2021/02/08', 15);
INSERT INTO QNA_LIST VALUES (3, 1000300, 'Re: 주문건요', 1, '운영자', '2021/02/08', 13);
INSERT INTO QNA_LIST VALUES (4, 1000300, '주문건요', 100090, '홍길동', '2021/02/08', 13);
-- 문의글 테이블 생성
CREATE TABLE QNA (
	QNA_ID NUMBER,
	PRODUCT_ID NUMBER,
	COLOR VARCHAR2(50),
	TITLE VARCHAR2(300),
	CONTENT VARCHAR2(4000),
	ACCOUNT_ID NUMBER,
	ID VARCHAR2(200),
	POSTING_DATE DATE,
	VIEWS NUMBER,
	ATTACH VARCHAR2(200),
	CONSTRAINT QNA_PK PRIMARY KEY (QNA_ID)
);
-- 문의글
INSERT INTO QNA VALUES (2, 1000100, '진그레이', '재입고문의', '림볼 재입고되나요?',
100012, 'temp123', '2021/02/08', 13, null);
-- 문의글 수정
UPDATE QNA SET
CONTENT = '림볼 언제쯤 재입고되나요?'
WHERE ACCOUNT_ID = 100012 AND QNA_ID=2;
-- 문의글 삭제
DELETE FROM QNA 
WHERE ACCOUNT_ID = 100012 AND QNA_ID=2;