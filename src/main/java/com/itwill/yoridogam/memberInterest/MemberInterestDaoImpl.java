package com.itwill.yoridogam.memberInterest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("MemberInterestDao")
public class MemberInterestDaoImpl implements MemberInterestDao {

	public static final String NAMESPACE="com.itwill.yoridogam.mapper.TeacherMapper.";
	
	private SqlSession sqlSession;

	@Override
	public int create(MemberInterest memberIntr) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int upate(MemberInterest memberIntr) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberInterest findInterest(String mi_interest) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
