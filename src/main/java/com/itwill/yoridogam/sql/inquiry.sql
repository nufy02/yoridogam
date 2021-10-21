/**************************************
�̸�           ��?       ����             
------------ -------- -------------- 
IB_NO        NOT NULL NUMBER(10)     
IB_TITLE              VARCHAR2(100)  
IB_CONTENT            VARCHAR2(1000) 
IB_DATE               DATE           
IB_VIEWCOUNT          NUMBER(10)     
IB_DEPTH              NUMBER(10)     
IB_GROUPNO   NOT NULL NUMBER(10)     
IB_STEP      NOT NULL NUMBER(10)     
M_ID                  VARCHAR2(20)    
 **************************************/

/******************************
				create
 *******************************/
 --���� �Խ��� �Խñ� �߰�
 insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID) 
 		values(inquiry_ib_no_SEQ.nextval, ?, ?, sysdate, 0, null, inquiry_ib_no_SEQ.currval, ?, ?);		
/*
insert into inquiry values(inquiry_ib_no_SEQ.nextval, '������ ���� ���� ����ϴ�', '12�� ���Ǹ� �̸� ������ �� �ֳ���?', sysdate, 0, 1, null, inquiry_ib_no_SEQ.currval, 1, 'member1');		
insert into inquiry values(inquiry_ib_no_SEQ.nextval, '������ �ߴµ� ���� �Ϸ� ȭ����..', '�� �߰� ��������� ���� Ȯ���� �� �ִ� ����� �ֳ���?', sysdate, 0, 1, null, inquiry_ib_no_SEQ.currval, 1, 'member2');		
insert into inquiry values(inquiry_ib_no_SEQ.nextval, '��Ÿ����1 ������ ����', '���� ���Ǵ� ������ ������ ��ȹ�� ���Գ���?', sysdate, 0, 1, null, inquiry_ib_no_SEQ.currval, 1, 'member3');		
 */

 /*****************************
				update
 ******************************/
 --���� �� ����(�� ��ȣ)
update inquiry set IB_TITLE=?, IB_CONTENT=? where IB_NO=?;
/*
update NOTICE set NOTI_TITLE ='������ ���� ������ �־��!', IB_CONTENT='12�� ���Ǹ� �̸� ������ �� �ֳ���??' where NOTI_NO=1;		
 */
 
 /*****************************
				delete
 ******************************/
 --���Ǳ� �� Ư�� �� ����(�� ��ȣ)
DELETE FROM inquiry WHERE NOTI_NO=?;		

 
 /*****************************
				select
 ******************************/
 --���� �� �󼼺���(�� ��ȣ)
select IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_SECRET, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID from inquiry where IB_NO=?;		
 --���� �� ��ü ����
 select IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_SECRET, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID from inquiry;		
--���Ǳ� ã��(�ۼ��� ID)
select IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_SECRET, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID from inquiry where M_ID=?;		


 
