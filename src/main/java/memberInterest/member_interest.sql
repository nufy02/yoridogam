/***************************member_interest table********************************/
/***************************************

�̸�          ��?       ����           
----------- -------- ------------ 
MI_NO       NOT NULL NUMBER(10)   
MI_INTEREST          VARCHAR2(30) 
M_ID                 VARCHAR2(20) 

1) ȸ�����Խ� insert memeber, member_interst ������ ���
 --> �޴� ���ڸ� 2���� Member, m_interest
2) ȸ�����Խ� ����� Member ��ü member���̺�����
3) ���⼭ m_interest list��  �ݺ����� ���� mi_interest�� ����
4) �׸���  mi_interest=p_category ���ǹ��� ���� �����͸� ��� 
****************************************/

select * from member_interest where m_id='member1';

insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'��','member1');

update member_interest set mi_interest ='��' where m_id ='member1'

desc member_interest;