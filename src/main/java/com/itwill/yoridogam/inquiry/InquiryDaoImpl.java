package com.itwill.yoridogam.inquiry;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository("inquiryDao")
public class InquiryDaoImpl implements InquiryDao{

	public static final String NAMESPACE = "com.itwill.yoridogam.mapper.InquiryMapper.";
	
	@Override
	public int insertInquiry(Inquiry inquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateInquiry(Inquiry inquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertInquiryA(Inquiry inquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateInquiryA(Inquiry inquiry) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteInquiry(int ib_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Inquiry> selectByAllInquiry() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectByNoInquiry(int ib_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean updateInquiryViewCount(int ib_no) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int selectByIdInquiry(String m_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
