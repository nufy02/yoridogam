package com.itwill.yoridogam.teacher;

import java.util.List;


public interface TeacherDao {
	/*
	 * INSERT 강사가입 (사용자생성)
	 */
	int create(Member teacher) throws Exception;
	/*
	 * UPDATE 강사 정보 수정 (회원수정)
	 */
	int update(Member teacher) throws Exception;
	/*
	 * SELECT_BY_ID 강사정보 상세 조회
	 */
	Member findTeacher(String t_id) throws Exception;
	
	/*
	 * REMOVE 회원정보 삭제
	 */
	Member remove(String t_id) throws Exception;
	
	/*
	 * SELECT ALL강사전체리스트 출력
	 */
	List<Member> findMemberList() throws Exception;
	
	/*
	 * isExisted 아이디 중복검사
	 */
	boolean existedMember(Member t_id) throws Exception;
}
