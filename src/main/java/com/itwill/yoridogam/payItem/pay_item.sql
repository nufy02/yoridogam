/**************************************
�̸�     ��?       ����         
------ -------- ---------- 
PI_NO  NOT NULL NUMBER(10) 
PI_QTY          NUMBER(10) 
PAY_NO          NUMBER(10) 
P_NO            NUMBER(10) 
 **************************************/

/******************************
				create
 *******************************/
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,?,pay_pay_no_seq.currval,?);

 /*****************************
				select
 ******************************/
 --m_id ȸ�� ���� Ư�� �� ��ȸ
 select * from pay py join pay_item pi on py.pay_no=pi.pay_no join product p on pi.p_no=p.p_no where py.m_id=?;
 
 
 
 
 
