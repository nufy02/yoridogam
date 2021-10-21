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

 /*****************************
				update
 ******************************/
 --문의 글 수정(글 번호)
update inquiry set IB_TITLE=?, IB_CONTENT=? where IB_NO=?;

 
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


 
