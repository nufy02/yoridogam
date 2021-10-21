package com.itwill.yoridogam.repository;

import java.util.List;

import com.itwill.yoridogam.domain.Notice;

public interface NoticeDao {

	/*************** 공지사항 추가 ***************/
	int insert(Notice notice);
	
	/*************** 공지사항 수정 ***************/
	int updateNoti(String noti_title, String noti_content, int noti_no);
	
	/*************** 공지사항 삭제 ***************/
	int deleteNoti(int noti_no);
	
	/*************** 공지사항 전체 조회 ***************/
	List<Notice> selectAllNoti();
	
	/*************** 공지사항 한 개 보기 ***************/
	List<Notice> selectByNo(int noti_no);
	
	
}