CREATE TABLE RESERVED( -- ?��머�??��?��블�? ???�� ?��?��?��, PK�? 2개로 ?��루어�? ?��?���? ?��?�� 방법 �? FOREIGN KEY ?��?��방법 ?��?��?��?��
    CUSTOMER_ID INT NOT NULL,
    VIDEO_ID INT NOT NULL,
    DAT DATE,
    PRIMARY KEY (CUSTOMER_ID, VIDEO_ID),
    FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
    FOREIGN KEY(VIDEO_ID) REFERENCES VIDEO(VIDEO_ID)
); 

SELECT *
FROM CUSTOMER;

UPDATE VIDEO
SET GENRE = '�׼�'
WHERE VIDEO_ID = 7;

INSERT INTO RESERVED VALUES(
    3,
    '11',
    '2023-12-25'
);


--������ ����
--1. 
SELECT GENRE FROM VIDEO WHERE TITLE = '������ ����';

--2.
SELECT VIDEO_ID FROM RESERVED;

--3.
SELECT VIDEO.VIDEO_ID
FROM VIDEO
WHERE NOT EXISTS (
    SELECT 1
    FROM RESERVED
    WHERE RESERVED.VIDEO_ID = VIDEO.VIDEO_ID
);

--4. 
SELECT DISTINCT A.TITLE
FROM VIDEO A, RESERVED B
WHERE A.VIDEO_ID = B.VIDEO_ID;

--5.
SELECT DISTINCT A.NAME
FROM CUSTOMER A, RESERVED B
WHERE A.CUSTOMER_ID = B.CUSTOMER_ID

--6.
SELECT CUSTOMER.ADDRESS
FROM CUSTOMER
JOIN RESERVED ON CUSTOMER.CUSTOMER_ID = RESERVED.CUSTOMER_ID
JOIN VIDEO ON RESERVED.VIDEO_ID = VIDEO.VIDEO_ID
WHERE VIDEO.GENRE = '�׼�';

--7. 
SELECT DISTINCT CUSTOMER.NAME
FROM CUSTOMER
JOIN RESERVED ON CUSTOMER.CUSTOMER_ID = RESERVED.CUSTOMER_ID
JOIN VIDEO ON RESERVED.VIDEO_ID = VIDEO.VIDEO_ID
WHERE VIDEO.GENRE = '��ť���͸�';



