package com.itwill.yoridogam.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
	
	@Autowired
	private TeacherDao teacherDao;
	
	/*
	 * 회원가입(강사)
	 */
	@Override
	public int create(Teacher teacher) throws Exception {
			if(teacherDao.existedTeacher(teacher.getT_name())) {
				return -1;
			}else {
				int insertRowCount=teacherDao.create(teacher);
				return insertRowCount;
			}
		}
	/*
	 * 강사로그인
	 */
	@Override
	public int login(String sUserId, String password) throws Exception {
		int result=-1;
		//1.아이디 존재여부
		Teacher teacher = teacherDao.findTeacher(sUserId);
		if(sUserId==null) {
			result=0;
		}else {
			if(teacher.getT_pass().equals(password)) {
				result=2;
			}else {
				result=1;
			}
		}
		return result;
	}
	/*
	 * 강사정보
	 */
	@Override
	public Teacher findMember(String sUserId) throws Exception {
		Teacher findTeacher = teacherDao.findTeacher(sUserId);
		return findTeacher;
	}
	/*
	 * 강사리스트보기
	 */

	@Override
	public List<Teacher> getTeacherList() throws Exception {
		return teacherDao.findTeacherList();
	}
	/*
	 * 강사수정
	 */

	@Override
	public int update(Teacher teacher) throws Exception {
		return teacherDao.update(teacher);
	}
	/*
	 * 강사탈퇴
	 */
	@Override
	public int remove(String sUserId) throws Exception {
		return teacherDao.remove(sUserId);
	}
	/*
	 * 아이디중복여부확인
	 */

	@Override
	public boolean isDuplcateTeacherId(String sUserId) throws Exception {
		boolean isExist = teacherDao.existedTeacher(sUserId);
		if (isExist) {
			return true;
		} else {
			return false;
		}
	}
}
