package com.itwill.yoridogam.memberInterest;

public interface MemberInterestDao {
	/*
	 * INSERT 관심분야
	 */
	int create(MemberInterest memberIntr) throws Exception;
	//int create(Member member) throws Exception;
	
	
	/*
	 * UPDATE 관심분야
	 */
	int upate(MemberInterest memberIntr) throws Exception;
	
	/*
	 * 관심강의 찾기
	 */
	MemberInterest findInterest(String mi_interest) throws Exception;
}
