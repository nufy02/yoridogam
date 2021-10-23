package com.itwill.yoridogam.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.memberInterest.MemberInterest;
import com.itwill.yoridogam.memberInterest.MemberInterestDao;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private MemberInterestDao memberInterestDao;
	
	
	@Override
	public int create(Member member, MemberInterest memberInterest) throws Exception {
		memberDao.create(member);
		memberInterestDao.create(memberInterest);
		return 0;
	}

	@Override
	public Member findMember(String sUserId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberInterest> getMemberInterestList(String sUserId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Member member, MemberInterest memberInterest) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int remove(String sUserId) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean isDuplcateUserId(String sUserId) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

}
