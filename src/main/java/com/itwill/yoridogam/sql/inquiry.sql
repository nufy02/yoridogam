/**************************************
이름           널?       유형             
------------ -------- -------------- 
IB_NO        NOT NULL NUMBER(10)     
IB_TITLE              VARCHAR2(100)  
IB_CONTENT            VARCHAR2(1000) 
IB_DATE               DATE           
IB_VIEWCOUNT          NUMBER(10)     
IB_DEPTH              NUMBER(10)     
IB_GROUPNO   NOT NULL NUMBER(10)     
IB_STEP      NOT NULL NUMBER(10)     
M_ID                  VARCHAR2(20)    
 **************************************/

/******************************
				create
 *******************************/
 --문의 게시판 게시글 추가
 insert into inquiry(IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID) 
 		values(inquiry_ib_no_SEQ.nextval, ?, ?, sysdate, 0, null, inquiry_ib_no_SEQ.currval, ?, ?);		
/*
insert into inquiry values(inquiry_ib_no_SEQ.nextval, '수업에 대한 문의 남깁니다', '12월 강의를 미리 예약할 수 있나요?', sysdate, 0, 1, null, inquiry_ib_no_SEQ.currval, 1, 'member1');		
insert into inquiry values(inquiry_ib_no_SEQ.nextval, '결제를 했는데 결제 완료 화면이..', '안 뜨고 지나갔어요 제가 확인할 수 있는 방법이 있나요?', sysdate, 0, 1, null, inquiry_ib_no_SEQ.currval, 1, 'member2');		
insert into inquiry values(inquiry_ib_no_SEQ.nextval, '일타강사1 선생님 수업', '다음 강의는 언제쯤 잡힐지 계획이 나왔나요?', sysdate, 0, 1, null, inquiry_ib_no_SEQ.currval, 1, 'member3');		


 */

 /*****************************
				update
 ******************************/
 --문의 글 수정(글 번호)
update inquiry set IB_TITLE=?, IB_CONTENT=? where IB_NO=?;
/*
update NOTICE set NOTI_TITLE ='수업에 대한 질문이 있어요!', IB_CONTENT='12월 강의를 미리 예약할 수 있나요??' where NOTI_NO=1;		
 */
 
 /*****************************
				delete
 ******************************/
 --문의글 중 특정 글 삭제(글 번호)
DELETE FROM inquiry WHERE NOTI_NO=?;		

 
 /*****************************
				select
 ******************************/
 --문의 글 상세보기(글 번호)
select IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_SECRET, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID from inquiry where IB_NO=?;		
 --문의 글 전체 보기
 select IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_SECRET, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID from inquiry;		
--문의글 찾기(작성자 ID)
select IB_NO, IB_TITLE, IB_CONTENT, IB_DATE, IB_VIEWCOUNT, IB_SECRET, IB_DEPTH, IB_GROUPNO, IB_STEP, M_ID from inquiry where M_ID=?;		


 
