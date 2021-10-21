/**************************************
 �̸�     ��?       ����           
------ -------- ------------ 
PAY_NO    NOT NULL NUMBER(10)   
PAY_DATE           DATE         
PAY_TOTAL          VARCHAR2(10) 
PAY_TYPE           VARCHAR2(30) 
M_ID               VARCHAR2(20) 
 **************************************/

/******************************
				create
 *******************************/
 --m_id ȸ�� �¶��� ���� ����
 insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,?,?,?);

 /*****************************
				delete
 ******************************/
--Ư�� ���� ��� �� ���� ����(delete cascade - pay_item)
delete from pay where pay_no=?;
--m_id ȸ���� ��� ���� ���� ����(delete cascade - pay_item)
delete from pay where m_id=?;
 
 /*****************************
				select
 ******************************/
 --m_id ȸ�� �������� ���� ����
 select count(*) from pay where m_id=?;
 --m_id ȸ�� ���� Ư�� ��ȸ
 select * from pay where pay_no=? and m_id=?;
 --m_id ȸ�� ���� ��ü ��ȸ
 select * from pay where m_id=?;
 --m_id ȸ�� ���� �� ��ȸ
 select * from pay py join pay_item pi on py.pay_no=pi.pay_no join product p on pi.p_no=p.p_no where py.m_id=?;
 --m_id ȸ�� ���� Ư�� �� ��ȸ
 select * from pay py join pay_item pi on py.pay_no=pi.pay_no join product p on pi.p_no=p.p_no where py.m_id=? and pi.pi_no=?;

