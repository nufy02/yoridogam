/**************************************
이름      널? 유형            
------- -- ------------- 
PT_NO      NUMBER(10)    
PT_DATE    DATE          
PT_TIME    VARCHAR2(100) 
P_NO       NUMBER(10)
 **************************************/

/******************************
				insert
 *******************************/
 insert into product_time(pt_no,pt_date, pt_time, p_no) values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date(?,'YYYY/MM/DD'),?,?);

 
 /*****************************
				update
 ******************************/
 update product_time set pt_time=? where pt_no=?;

 /*****************************
				delete
 ******************************/
 delete from product_time where pt_no=?;
 
 /*****************************
				select
 ******************************/
 select pt_time from product_time pt join reservation rsv on pt.pt_time!=rsv.rsv_time where pt.p_no=?;
 select pt_time from product_time pt join reservation rsv on pt.pt_time=rsv.rsv_time where pt.p_no=?;
 
 
