/**************************************
 이름     널?       유형           
------ -------- ------------ 
PAY_NO    NOT NULL NUMBER(10)   
PAY_DATE           DATE         
PAY_TOTAL          VARCHAR2(10) 
PAY_TYPE           VARCHAR2(30) 
M_ID               VARCHAR2(20) 
 **************************************/

/******************************
				insert
 *******************************/
 insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,?,?,?);

 /*****************************
				delete
 ******************************/
delete from pay where pay_no=?;
delete from pay where m_id=?;
 
 /*****************************
				select
 ******************************/
 select * from pay where m_id=?;
 select * from pay py join pay_item pi on py.pay_no=pi.pay_no join product p on pi.p_no=p.p_no where py.m_id=?;
