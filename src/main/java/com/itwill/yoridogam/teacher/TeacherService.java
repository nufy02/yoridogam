package com.itwill.yoridogam.teacher;

import java.util.List;


public interface TeacherService {
	/*
	 * 강사가입 
	 */
	int create(Teacher teacher) throws Exception;
	
	/*
	 * 강사 로그인
	 */
	int login(String sUserId, String password) throws Exception;
	/*
	 * 강사상세정보
	 */
	Teacher findMember(String sUserId) throws Exception;
	/*
	 * 강사리스트
	 */
	List<Teacher> getTeacherList() throws Exception;
	/*
	 * 강사수정
	 */
	int update(Teacher teacher) throws Exception;
	/*
	 * 강사탈퇴
	 */
	int remove(String sUserId) throws Exception;
	/*
	 * 강사아이디 중복체크
	 */
	boolean isDuplcateTeacherId(String sUserId) throws Exception;
}
