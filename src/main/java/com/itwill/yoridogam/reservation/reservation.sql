/**************************************
 �̸�     ��?       ����           
------ -------- ------------ 
CI_NO  NOT NULL NUMBER(10)   
CI_QTY          NUMBER(10)   
P_NO            NUMBER(10)   
M_ID            VARCHAR2(20) 
 **************************************/

/******************************
				create
 *******************************/
 --m_id ȸ�� �������� ���� ����

insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,?,?,?,to_date(?,'YYYY/MM/DD'),?,sysdate,?,?);

insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,30000,'���̹�����',1,to_date('2021/10/21','YYYY/MM/DD'),'10:00-11:00',sysdate,'����',1);
 /*****************************
				delete
 ******************************/
--m_id ȸ�� Ư�� ���� ��� �� ���� ����
delete from reservation where rsv_no=? and m_no=?;

delete from reservation where rsv_no=1 and m_no=1;
--m_id ȸ�� ��ü ���� ���� ����
delete from reservation where m_id=?;
 
 /*****************************
				select
 ******************************/
 --m_id ȸ�� ���� ��ü ��ȸ
 select * from reservation where m_no=?;
 
 select * from reservation where m_no=1;
 --m_id ȸ�� ���� Ư�� �� ��ȸ
 select * from product p join reservation rsv on rsv.p_no=p.p_no where rsv.m_no=?;
 
 select * from product p join reservation rsv on rsv.p_no=p.p_no where rsv.m_no=1;
 
 