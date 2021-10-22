package com.itwill.yoridogam.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.MemberMapper.";
	
	private SqlSession sqlSession;
	/*
	 * 		1) 회원가입 진행시, 인자를 user와  관심분야(String m_interest)를 받아서 
	 * 		2) user는 member테이블 저장 member_insert 
	 * 		3) m_interest는 member_interest 테이블에 저장
	 * 		이게 가능한가...?
	 */
	/*
	 *  관심분야 처리는 좀 더 생각을 해보겠습니다.... 
	 *  member 테이블 + member_interest 테이블
	 */
	@Override
	public int create(Member member, String m_interest) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member findMember(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member remove(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> findMemberList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean existedMember(Member m_id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

}
