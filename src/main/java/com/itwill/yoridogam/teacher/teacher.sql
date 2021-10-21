/*******************    Teacher      ************************/
/*******************************
  �̸�         ��?       ����            
---------- -------- ------------- 
    T_ID       NOT NULL VARCHAR2(20)  
    T_NAME     NOT NULL VARCHAR2(20)  
    T_PASS     NOT NULL VARCHAR2(30)  
    T_EMAIL    NOT NULL VARCHAR2(50)  
    T_PHOTO    NOT NULL VARCHAR2(500) 
    T_DETAIL   NOT NULL VARCHAR2(500) 
    T_LOCATION NOT NULL VARCHAR2(100) 
    P_NO                NUMBER(10)    
**********************************/
/*
    teacher_select_by_id_count
    ȸ�����翩��Ȯ��(ȸ�����Խ�)
*/
select count(*) cnt from teacher where m_id='teaher1';

/*
    teacher_insert
    ȸ�����翩��Ȯ��(ȸ�����Խ�)
*/
insert into teacher(t_id,t_name,t_pass,t_email,t_photo,t_detail,t_location,p_no) values('teacher1','kim1','1111','kkiho@naver.com','�̹���1','��Ÿ����','����',1);
insert into teacher(t_id,t_name,t_pass,t_email,t_photo,t_detail,t_location,p_no) values('teacher2','him1','2222','kkiho1@naver.com','�̹���2','��Ÿ����1','����1',2);
insert into teacher(t_id,t_name,t_pass,t_email,t_photo,t_detail,t_location,p_no) values('teacher3','tim1','3333','kkiho2@naver.com','�̹���3','��Ÿ����2','����2',3);



/*
    teacher_update
    ȸ������
*/
update teacher set t_pass='2222',t_email='dfff@naver.com',t_photo='�̹�����1',t_detail='��Ÿ����',t_location='��õ',p_no='1' where t_id='teacher1';

/*
    teacher_remove
    ȸ������
*/
delete teacher where t_id='teacher1';

/***************select************************/
/*
    teacher_select_all
    ȸ����ü�˻�
*/
select * from teacher;
/*
    teacher_select_by_id
    ȸ���Ѹ�˻�
*/
select * from teaher where t_id='teacher2';

desc teacher;