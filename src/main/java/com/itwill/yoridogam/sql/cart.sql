/**************************************
 �̸�     ��?       ����           
------ -------- ------------ 
CI_NO  NOT NULL NUMBER(10)   
CI_QTY          NUMBER(10)   
P_NO            NUMBER(10)   
M_ID            VARCHAR2(20) 
 **************************************/

/******************************
				insert
 *******************************/
 --m_id ȸ�� ��ٱ��Ͽ� �¶��� ���� �߰� (��������X)
 insert into cart(ci_no, ci_qty, p_no, m_id) values(CART_CI_NO_SEQ.nextval,?,?,?);
 
 /*****************************
				update
 ******************************/
 --��ٱ��� ���� ���� +,-
 update cart set ci_qty=ci_qty+1 where ci_no=?;
 update cart set ci_qty=ci_qty-1 where ci_no=?;

 /*****************************
				delete
 ******************************/
 --��ٱ��� �� ���� Ư�� ����
 delete from cart where ci_no=3 and m_id=?;
 --��ٱ��� �� ���� ��ü ����
 delete from cart where m_id=?;
 
 /*****************************
				select
 ******************************/
 --m_id ȸ�� ��ٱ��� ���Ǹ���Ʈ ���
 select * from cart c join product p on c.p_no=p.p_no where m_id=?;
 --m_id ȸ�� ��ٱ��� �� ���� ���� ����
select count(*) from cart c join member m on c.m_id=m.m_id;
 --m_id ȸ�� ��ٱ��� �� Ư�� ���� ���� ����
select count(*) from cart c join member m on c.m_id=m.m_id and c.p_no=?;

 
