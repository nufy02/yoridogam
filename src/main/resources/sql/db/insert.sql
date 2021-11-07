
--member1 - 기능 구현 및 시연용
--그 외는 더미데이터

--member1 - 기능 구현 및 시연용
--그 외는 더미데이터


/********** Member **********/
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member1','김봄이','1111','서울 용산구 한남동 737-28','kkihon1@naver.com','010-4356-3458','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member2','이여름','2223','서울 강남구 신사동 613-7','kkihon2@naver.com','010-1232-8345','여자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member3','최가을','3333','서울 송파구 잠실동 19-4','kkihon3@naver.com','010-2323-8488','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('admin1','박겨울','1111','서울 강남구 수서동 747','kkihon3@naver.com','010-5523-8568','여자');

/********** Member Interest ********* 3개로 제한(비건,한식,베이킹)*/
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'한식','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'베이킹','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'한식','member2');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member3');

/********** Teacher **********/
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher1','김개발','1111','010-4564-8700','kkiho@naver.com','img1',
'조리 실무 10년 현장경력
직업 전문학교 강사 출신
한솔요리학원 필기 강의 500회 이상 진행
조리산업기사/조리기능사 자격증(5종 보유)','서울 용산구 한남동 737-28');
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher2','이자바','2222','010-1341-0941','kkiho1@naver.com','img2',
'서울대학교 호암교수회관 및 메이필드호텔 현장 경력
한솔요리학원 경력 5년차 전임 강사 (2010~2015)
조리기능사 자격증 (4종보유)
직업훈련교사 자격증(조리분야)','서울 강남구 신사동 613-7');
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher3','최톰캣','3333','010-2729-1242','kkiho2@naver.com','img3',
'한솔요리학원 노원지점 제과제빵 전임 강사
제과제빵 실무 12년 (크라운 베이커리 외)
직업전문학교 교사 출신
한솔요리학원 제과제빵 강의 600회 이상 진행','서울 송파구 잠실동 19-4');


/********** Product **********/
insert into product values(PRODUCT_P_NO_SEQ.nextval,'밥 한 그릇만으로도 품위있게, 김사과의 < 모두의 솥밥>',
'한식당에서 먹던 솥밥을 우리집에서 뚝딱! 집에서 쉽게 만드는 솥밥의 세계, 반찬이 따로 필요 없는 종류별 솥밥 레시피, 맛있는 식사 하고싶은데 귀찮은 그런 날 다양한 재료를 올려 나와 내 가족을 위한 밥상을 만들어보아요',
'한식','8900','온라인','img/product-img/product1.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'맛과 멋을 사로잡는 한식의 품격!',
'이 클래스의 수강대상은 입문과 초∙중급으로 맞춰보았어요. 입문, 초급자를 위해 모든 한식 요리에 많이 사용되는 육수를 만드는 법과 야채 손질법, 육류 보관법, 해산물 손질법 등을 두루 다룰 예정입니다.',
'한식','45900','온라인','img/product-img/product2.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'건강 그리고 맛 어느것도 놓치지 않는 글로벌 비건집밥',
'고기가 없어도 충분이 맛있는 채수를 만든는 방법을, 채소들 본연의 맛을 극대화 하여 풍미를 내는 방법을, 다양한 향신료와 소스를 통해 조화로운 맛을 내는 방법을 통해 지금까지 만나보지 못한 비건의 맛을 알려드릴게요. 이번 클래스에선 건강식, 비건식은 맛이 없다는 걱정은 잠시 접어두셔도 좋습니다',
'비건','52000','오프라인','img/product-img/product3.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'바삭바삭 파이 반죽과 함께! 밀희의 파이, 컵케이크',
'기본 메뉴가 맛있으면 다른 메뉴로 구매를 이끌어줍니다. 그중 가장 호불호가 적었던 제품인 에그 파이와 콘치즈 파이는 손님들이 가장 쉽게 접근하는 메뉴에요. 푸딩처럼 부드러운 에그파이와 단짠단짠 진리의 조합 콘치즈파이까지, 대중성 있는 메뉴를 배우고, 다양하게 활용할 수 있는 응용법까지 자세히 알려드릴게요.',
'베이킹','30000','오프라인','img/product-img/product4.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'앙금과 케이크의 아름다운 만남  앙금 플라워 떡케이크 제작','밀가루 베이킹과는 달리 정확한 계량보다는 연습으로 익힌 감이 중요하기 때문에, 클래스에서는 기본 백 설기 시트부터 잼과 무스 등을 활용한 초코, 얼그레이, 단호박, 무화과, 옥수수 등 다양한 퓨전 설기를 만들어 볼 거예요.',
'베이킹','41900','오프라인','img/product-img/product5.png','teacher2');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'한 번 보면 평생 사용할 수 있는 소불고기 만드는 방법','고기 기본간장 양념장을 실패 없는 비율로 고기 양념장 만드는 방법을 배웁니다.',
'한식','9900','온라인','img/product-img/product6.png','teacher2');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'로푸드를 활용한 건강한 한 끼, 샐러드와 파티푸드','용어조차 흔치 않아 다소 생소할 수 있는 로푸드를 일상에서 너무 쉽고 빠르고 간편하게 녹여낼 수 있는 방법을 알려드릴게요! 간단한 로푸드 기법과, 재료 사용법을 익혀서 건강한 한 끼 식사를 만들어나가는데 좋은 아이디어가 되어줄 거예요',
'비건','29000','오프라인','img/product-img/product7.png','teacher3');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'육수보다 깊은 채수의 맛, 채식 해장국 원데이클래스','한국인의 입맛에 맞는 칼칼한 국물 요리부터 든든하고 진한 보양식, 그리고 토마토를 넣은 이색 해장국까지! 국밥처럼 평생 못 먹을 줄 알았던 음식을 비건으로 직접 만드는 비법을 알려드릴게요',
'비건','14000','온라인','img/product-img/product8.png','teacher3');


/********** Product_time **********/

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',1);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',1);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'13:00-14:00',1);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',2);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',2);
 
insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'13:00-14:00',2);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',3);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',3);


/********** Cart **********/


/********** Pay **********/
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'54800','무통장입금','member1');
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'106800','카드결제','member1');
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'136800','카카오페이','member1');

/********** Pay_item **********/
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,1,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,1,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,2,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,2,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,2,3);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,3);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,4);

/********** Reservation **********/

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,8900,'현장결제',1,'2021-11-10','10:00-11:00',sysdate,'member1',1);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,19800,'카카오페이',2,'2021-11-10','11:00-12:00',sysdate,'member1',2);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,45900,'무통장입금',1,'2021-11-10','10:00-11:00',sysdate,'member1',3);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,91800,'카드결제',2,'2021-11-10','13:00-14:00',sysdate,'member1',4);


/********** Review **********/


/********** Notice  엑셀 작업 **********/







/********** Inquiry 엑셀 작업 **********/ 








