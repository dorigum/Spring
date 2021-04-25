-- 회원 테이블 생성
        CREATE TABLE member (
            memID VARCHAR2(10) NOT NULL PRIMARY KEY,
            memName VARCHAR2(20) NOT NULL,
            memAddr VARCHAR2(50),
            memPhone VARCHAR2(13)
        );
        
-- 회원 데이터 추가

 SELECT * FROM member;

-- 상품 테이블 생성
        CREATE TABLE product (
            prdNum VARCHAR2(10) NOT NULL PRIMARY KEY,
            prdName VARCHAR2(30) NOT NULL,
            prdPrice NUMBER(10),
            prdCompany VARCHAR2(30),
            prdStock NUMBER(5),
            katNum VARCHAR2(5),
            FOREIGN KEY (katNum) REFERENCES kategorie (katNum)
        );
        
-- 상품 데이터 추가
INSERT INTO product VALUES('1001', '펜', 700, '모나미', 100, '01');
INSERT INTO product VALUES('1002', '메모지', 2500, '아트박스', 50, '02');
INSERT INTO product VALUES('1003', '스티커', 1000, '카카오프렌즈', 50, '03');
INSERT INTO product VALUES('1004', '노트', 2000, '모닝글로리', 50, '04');
INSERT INTO product VALUES('1005', '디자인문구', 3000, '텐바이텐', 50, '05');
COMMIT;
        
    SELECT * FROM product;
    
-- 카테고리 테이블 생성
    CREATE TABLE kategorie (
            katNum VARCHAR2(5) NOT NULL PRIMARY KEY,
            katName VARCHAR2(20) NOT NULL
        );
        
        
-- 카테고리 데이터 추가
INSERT INTO kategorie VALUES('01', '펜');
INSERT INTO kategorie VALUES('02', '메모지');
INSERT INTO kategorie VALUES('03', '스티커');
INSERT INTO kategorie VALUES('04', '노트');
INSERT INTO kategorie VALUES('05', '디자인문구');