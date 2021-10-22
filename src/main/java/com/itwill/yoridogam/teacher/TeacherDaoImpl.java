package com.itwill.yoridogam.teacher;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("teacherDao")
public class TeacherDaoImpl implements TeacherDao {
	
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.TeacherMapper.";
	
	private SqlSession sqlSession;

	@Override
	public int create(Member teacher) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Member teacher) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member findTeacher(String t_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member remove(String t_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> findMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean existedMember(Member t_id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
}
