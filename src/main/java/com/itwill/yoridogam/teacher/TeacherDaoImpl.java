package com.itwill.yoridogam.teacher;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("teacherDao")
public class TeacherDaoImpl implements TeacherDao {
	
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.TeacherMapper.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int create(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Teacher findTeacher(String t_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Teacher remove(String t_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teacher> findMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean existedMember(Teacher t_id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
}
