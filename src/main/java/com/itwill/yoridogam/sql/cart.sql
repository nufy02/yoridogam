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
 insert into cart(ci_no, ci_qty, p_no, m_id) values(CART_CI_NO_SEQ.nextval,?,?,?);
 
 /*****************************
				update
 ******************************/
 update cart set ci_qty=ci_qty+1 where ci_no=?;
 update cart set ci_qty=ci_qty-1 where ci_no=?;

 /*****************************
				delete
 ******************************/
 delete from cart where ci_no=3 and m_id=?;
 delete from cart where m_id=?;
 
 /*****************************
				select
 ******************************/
 select * from cart c join product p on c.p_no=p.p_no where m_id=?;
 
 
