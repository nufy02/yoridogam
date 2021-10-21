/**************************************
�̸�      ��? ����            
------- -- ------------- 
PT_NO      NUMBER(10)    
PT_DATE    DATE          
PT_TIME    VARCHAR2(100) 
P_NO       NUMBER(10)
 **************************************/

/******************************
				create
 *******************************/
 --(����) �������� ���� ���ǽð� ���
 insert into product_time(pt_no,pt_date, pt_time, p_no) values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date(?,'YYYY/MM/DD'),?,?);

 
 /*****************************
				update
 ******************************/
 --(����) Ư�� ���ǽð� ����
 update product_time set pt_time=? where pt_no=?;

 /*****************************
				delete
 ******************************/
 --(����) Ư�� ���ǽð� ����
 delete from product_time where pt_no=?;
 
 /*****************************
				select
 ******************************/
 --���� ������ ���� �ð� ����Ʈ ��ȸ
 select pt_time from product_time pt join reservation rsv on pt.pt_time!=rsv.rsv_time where pt.p_no=?;
 --(����)�⿹�� ���� �ð� ����Ʈ ��ȸ
 select pt_time from product_time pt join reservation rsv on pt.pt_time=rsv.rsv_time where pt.p_no=?;
 
 
