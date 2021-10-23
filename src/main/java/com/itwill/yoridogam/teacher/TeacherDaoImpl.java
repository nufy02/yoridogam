package com.itwill.yoridogam.teacher;

import java.util.ArrayList;
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
		return sqlSession.insert(NAMESPACE+"create",teacher); 
	}

	@Override
	public int update(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"update",teacher); 
	}

	@Override
	public Teacher findTeacher(String sUserId) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"findTeacher",sUserId); 
	}

	@Override
	public int remove(String sUserId) throws Exception {
		return sqlSession.delete(NAMESPACE+"remove", sUserId);
	}

	@Override
	public List<Teacher> findTeacherList() throws Exception {
		List<Teacher> tList = sqlSession.selectList(NAMESPACE+"findTeacherList");
		ArrayList<Teacher> teacherList=(ArrayList<Teacher>)tList;
		return teacherList;
	}

	@Override
	public boolean existedTeacher (String sUserId) throws Exception {
		int count = sqlSession.selectOne(NAMESPACE+"existedTeacher",sUserId);
		if(count==1) {
			return true;
		}else {
			return false;
		}
	}
}
