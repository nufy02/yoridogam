--실데이터 용

/********** Member **********/
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member1','김첨지1','1111','서울시','kkihon1@naver.com','010-8888-8888','비건','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member2','김첨지2','2223','서울시2','kkihon2@naver.com','010-1232-8888','빵','여자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member3','김첨지3','3333','서울시3','kkihon3@naver.com','010-2323-8888','쿠키','남자');

/********** Member Interest **********/
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'빵','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'쿠키','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'쿠키','member2');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member3');
/********** Product **********/


/********** Teacher **********/
insert into teacher(t_id,t_name,t_pass,t_email,t_photo,t_detail,t_location,p_no) values('teacher1','kim1','1111','kkiho@naver.com','이미지1','일타강사','서울',1);
insert into teacher(t_id,t_name,t_pass,t_email,t_photo,t_detail,t_location,p_no) values('teacher2','him1','2222','kkiho1@naver.com','이미지2','일타강사1','서울1',2);
insert into teacher(t_id,t_name,t_pass,t_email,t_photo,t_detail,t_location,p_no) values('teacher3','tim1','3333','kkiho2@naver.com','이미지3','일타강사2','서울2',3);


/********** Product_time **********/
/*
insert into product_time(pt_no,pt_date, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date('2021/10/21','YYYY/MM/DD'),'10:00-11:00',?);

insert into product_time(pt_no,pt_date, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date('2021/10/21','YYYY/MM/DD'),'11:00-12:00',?);

insert into product_time(pt_no,pt_date, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date('2021/10/21','YYYY/MM/DD'),'13:00-14:00',?);

insert into product_time(pt_no,pt_date, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date('2021/10/22','YYYY/MM/DD'),'10:00-11:00',?);

insert into product_time(pt_no,pt_date, pt_time, p_no)
 values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date('2021/10/22','YYYY/MM/DD'),'11:00-12:00',?);
 
insert into product_time(pt_no,pt_date, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,to_date('2021/10/22','YYYY/MM/DD'),'13:00-14:00',?);
*/

/********** Cart **********/


/********** Pay **********/


/********** Pay_item **********/


/********** Reservation **********/
/*
 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,30000,'네이버페이',1,to_date('2021/10/21','YYYY/MM/DD'),'10:00-11:00',sysdate,m_id,p_no);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,40000,'카카오페이',2,to_date('2021/10/22','YYYY/MM/DD'),'11:00-12:00',sysdate,m_id,p_no);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,30000,'네이버페이',1,to_date('2021/10/22','YYYY/MM/DD'),'10:00-11:00',sysdate,m_id,p_no);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,40000,'yoridogam페이',1,to_date('2021/10/21','YYYY/MM/DD'),'13:00-14:00',sysdate,m_id,p_no);
*/

/********** Review **********/


/********** Notice **********/


/********** Inquiry **********/
