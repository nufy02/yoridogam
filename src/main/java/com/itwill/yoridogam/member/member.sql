/*******************    Member      ************************/
/*******************************
    �̸�         ��?       ����            
    ---------- -------- ------------- 
    M_ID       NOT NULL VARCHAR2(20)  
    M_NAME     NOT NULL VARCHAR2(20)  
    M_PASS     NOT NULL VARCHAR2(30)  
    M_ADDR     NOT NULL VARCHAR2(100) 
    M_EMAIL    NOT NULL VARCHAR2(50)  
    M_PHONE    NOT NULL VARCHAR2(12)  
    M_INTEREST          VARCHAR2(30)  
    M_GENDER   NOT NULL VARCHAR2(10) 
**********************************/
/*
    member_select_by_id_count
    ȸ�����翩��Ȯ��(ȸ�����Խ�)
*/
select count(*) cnt from member where m_id='member1';

/*
    member_insert
    ȸ�����翩��Ȯ��(ȸ�����Խ�)
*/
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member1','��÷��1','1111','�����','kkihon@naver.com','010-8888-8888','���','����');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member2','��÷��2','1111','�����','kkihon@naver.com','010-8888-8888','���','����');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member3','��÷��3','1111','�����','kkihon@naver.com','010-8888-8888','���','����');


/*
    member_update
    ȸ������
*/
update member set m_pass='222', m_addr='��õ��', m_email='kkihon2@naver.com',m_phone='010-1111-2222',m_interest='��',m_gender='����' where m_id='member1';

/*
    member_remove
    ȸ������
*/
delete member where m_id='member1';

/*
    member_select_all
    ȸ����ü�˻�
*/
select * from member;
/*
    member_select_by_id
    ȸ���Ѹ�˻�
*/
select * from member where m_id='member2';

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
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'��','member1');

desc member_interest;