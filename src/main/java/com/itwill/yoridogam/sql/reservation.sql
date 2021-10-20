/**************************************
 이름     널?       유형           
------ -------- ------------ 
CI_NO  NOT NULL NUMBER(10)   
CI_QTY          NUMBER(10)   
P_NO            NUMBER(10)   
M_ID            VARCHAR2(20) 
 **************************************/

/******************************
				insert
 *******************************/
 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_date, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,?,?,?,to_date(?,'YYYY/MM/DD'),?,sysdate,?,?);
 
 /*****************************
				delete
 ******************************/
delete from reservation where rsv_no=?;
delete from reservation where m_id=?;
 
 /*****************************
				select
 ******************************/
 select * from reservation where m_id=?;
 select * from product p join reservation rsv on rsv.p_no=p.p_no where rsv.m_id=?;
 
 
