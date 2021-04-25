-- ȸ�� ���̺� ����
        CREATE TABLE member (
            memID VARCHAR2(10) NOT NULL PRIMARY KEY,
            memName VARCHAR2(20) NOT NULL,
            memAddr VARCHAR2(50),
            memPhone VARCHAR2(13)
        );
        
-- ȸ�� ������ �߰�

 SELECT * FROM member;

-- ��ǰ ���̺� ����
        CREATE TABLE product (
            prdNum VARCHAR2(10) NOT NULL PRIMARY KEY,
            prdName VARCHAR2(30) NOT NULL,
            prdPrice NUMBER(10),
            prdCompany VARCHAR2(30),
            prdStock NUMBER(5),
            katNum VARCHAR2(5),
            FOREIGN KEY (katNum) REFERENCES kategorie (katNum)
        );
        
-- ��ǰ ������ �߰�
INSERT INTO product VALUES('1001', '��', 700, '�𳪹�', 100, '01');
INSERT INTO product VALUES('1002', '�޸���', 2500, '��Ʈ�ڽ�', 50, '02');
INSERT INTO product VALUES('1003', '��ƼĿ', 1000, 'īī��������', 50, '03');
INSERT INTO product VALUES('1004', '��Ʈ', 2000, '��ױ۷θ�', 50, '04');
INSERT INTO product VALUES('1005', '�����ι���', 3000, '�ٹ�����', 50, '05');
COMMIT;
        
    SELECT * FROM product;
    
-- ī�װ� ���̺� ����
    CREATE TABLE kategorie (
            katNum VARCHAR2(5) NOT NULL PRIMARY KEY,
            katName VARCHAR2(20) NOT NULL
        );
        
        
-- ī�װ� ������ �߰�
INSERT INTO kategorie VALUES('01', '��');
INSERT INTO kategorie VALUES('02', '�޸���');
INSERT INTO kategorie VALUES('03', '��ƼĿ');
INSERT INTO kategorie VALUES('04', '��Ʈ');
INSERT INTO kategorie VALUES('05', '�����ι���');