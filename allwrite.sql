CREATE TABLE member(MNO NUMBER(30),NAME VARCHAR2(10),ID VARCHAR2(30),PASSWORD VARCHAR2(30),EMAIL VARCHAR2(50),MOBILENUMBER VARCHAR2(20),NICKNAME VARCHAR2(30),REGDATE TIMESTAMP,UPDATEDATE DATE);
CREATE TABLE board(BNO NUMBER(30),TITLE VARCHAR2(100),CONTENT VARCHAR2(255),WRITER VARCHAR2(30),REGDATE TIMESTAMP,UPDATEDATE DATE);
--CREATE TABLE IMAGE_TBL(FILENAME VARCHAR(255),UPLOADPATH VARCHAR2(255),UUID VARCHAR2(255),IMAGE VARCHAR2(1));

CREATE TABLE image(INO NUMBER(30),FILENAME VARCHAR2(255),UPLOADPATH VARCHAR2(255),UUID VARCHAR2(255),IMAGE VARCHAR2(1));
CREATE TABLE setting(SNO NUMBER(30),PRINT VARCHAR2(30),WIDTH NUMBER(5),HEIGHT NUMBER(5),UNIT NUMBER(10),COLUMN_NUM NUMBER(5),COLUMN_GUTTER VARCHAR2(100),ORIENTATION VARCHAR2(30),MARGIN_TOP NUMBER( 5),MARGIN_BOTTOM NUMBER( 5),MARGIN_RIGHT NUMBER( 5),MARGIN_LEFT NUMBER( 5),BLEED_TOP NUMBER( 5),BLEED_LEFT NUMBER( 5),BLEED_BOTTOM NUMBER( 5),BLEED_RIGHT NUMBER( 5));

DROP TABLE MEMBER;
DROP TABLE BOARD;
DROP TABLE IMAGE;
DROP TABLE SETTING;


CREATE Or REPLACE TYPE NAMEARRAY AS VARRAY(10) OF VARCHAR2(255); 

DESC MEMBER;
DESC BOARD;
DESC IMAGE;
DESC SETTING;


