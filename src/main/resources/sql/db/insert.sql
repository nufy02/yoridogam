--실데이터 용

/********** Member **********/
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member1','김첨지1','1111','서울시','kkihon1@naver.com','010-8888-8888','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member2','김첨지2','2223','서울시2','kkihon2@naver.com','010-1232-8888','여자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member3','김첨지3','3333','서울시3','kkihon3@naver.com','010-2323-8888','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('admin1','admin1','1111','서울시3','kkihon3@naver.com','010-2323-8888','남자');

/********** Member Interest **********/
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'빵','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'쿠키','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'쿠키','member2');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member3');

/********** Teacher **********/
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher1','kim1','1111','010-0000-0000','kkiho@naver.com','이미지1','일타강사','서울');
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher2','him1','2222','010-1111-1111','kkiho1@naver.com','이미지2','일타강사1','서울1');
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher3','tim1','3333','010-2222-2222','kkiho2@naver.com','이미지3','일타강사2','서울2');


/********** Product **********/
insert into product values(PRODUCT_P_NO_SEQ.nextval,'강의1','맛있어요','빵','10000','온라인','이미지url1','teacher1');
insert into product values(PRODUCT_P_NO_SEQ.nextval,'강의2','바삭해요','쿠키','5000','온라인','이미지url2','teacher2');
insert into product values(PRODUCT_P_NO_SEQ.nextval,'강의3','맛있어요','비건','10000','오프라인','이미지url3','teacher3');


/********** Product_time **********/

insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'10:00-11:00',1);

insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'11:00-12:00',1);

insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'13:00-14:00',1);

insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'10:00-11:00',2);

insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no)
 values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'11:00-12:00',2);
 
insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'13:00-14:00',2);

insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'10:00-11:00',3);

insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no)
 values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'11:00-12:00',3);
 
insert into product_time(pt_no,pt_date, pt_max, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021/10/21',30,'13:00-14:00',3);

/********** Cart **********/


/********** Pay **********/
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'20000','무통장입금','member1');
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'40000','카드결제','member1');
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'40000','카카오페이','member1');

/********** Pay_item **********/
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,1,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,2,1,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,3,2,3);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,2,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,2,3,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,3,3,3);

/********** Reservation **********/

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,30000,'네이버페이',1,'2021/10/21','10:00-11:00',sysdate,'member1',1);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,60000,'카카오페이',2,'2021/10/21','11:00-12:00',sysdate,'member3',1);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,50000,'네이버페이',1,'2021/10/21','10:00-11:00',sysdate,'member2',2);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,30000,'yoridogam페이',1,'2021/10/21','13:00-14:00',sysdate,'member1',1);


/********** Review **********/


/********** Notice **********/
insert INTO NOTICE(NOTI_NO, NOTI_TITLE, NOTI_DATE, NOTI_VIEWCOUNT, NOTI_CONTENT, M_ID)
VALUES(notice_noti_no_SEQ.nextval, '공지사항1', sysdate, 0, '저희 요리도감에서는 온, 오프 강의를 진행하여..', 'admin1');	

insert INTO NOTICE(NOTI_NO, NOTI_TITLE, NOTI_DATE, NOTI_VIEWCOUNT, NOTI_CONTENT, M_ID)
VALUES(notice_noti_no_SEQ.nextval, '공지사항2', sysdate, 0, 'yoridogam페이 사용이 가능해졌습니다. 더 많은 혜택.. ', 'admin1');

insert INTO NOTICE(NOTI_NO, NOTI_TITLE, NOTI_DATE, NOTI_VIEWCOUNT, NOTI_CONTENT, M_ID)
VALUES(notice_noti_no_SEQ.nextval, '공지사항3', sysdate, 0, 'SNS 이벤트 진행 중에 있습니다..', 'admin1');

/********** Inquiry **********/
insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, ib_depth, ib_groupno, ib_step, m_id)
VALUES(inquiry_ib_no_SEQ.nextval, '케이크 수업의 종류에 대해..', '케이크 수업이 추가될 수 있나요?', 
       sysdate, 0, 0, inquiry_ib_no_SEQ.nextval, 1, 'member1');
       
insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, ib_depth, ib_groupno, ib_step, m_id) 
VALUES(inquiry_ib_no_SEQ.nextval, '결제 방식에 대해..', '네이버페이 포인트를 사용할 수 있나요?', 
       sysdate, 0, 0, inquiry_ib_no_SEQ.nextval, 1, 'member2');
       
insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, ib_depth, ib_groupno, ib_step, m_id) 
VALUES(inquiry_ib_no_SEQ.nextval, '원하는 선생님 수업 종류에 대해..', '더?', 
       sysdate, 0, 0, inquiry_ib_no_SEQ.nextval, 1, 'member1');

insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, ib_depth, ib_groupno, ib_step, m_id)
VALUES(inquiry_ib_no_SEQ.nextval, '답변 드립니다 고객님', '요청이 많이 들어오고 있어 검토중에 있습니다..', 
       sysdate, 0, 1, 1, 2, 'admin1');

insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, ib_depth, ib_groupno, ib_step, m_id)
VALUES(inquiry_ib_no_SEQ.nextval, '답변 드립니다 고객님', '네이버측에서 사용 가능하십니다..', 
       sysdate, 0, 1, 2, 2, 'admin1');

insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, ib_depth, ib_groupno, ib_step, m_id)
VALUES(inquiry_ib_no_SEQ.nextval, '답변 드립니다 고객님', '현재 어려울 것으로 판단되어 예정 없습니다. 죄송합니다.', 
       sysdate, 0, 1, 3, 2, 'admin1');







