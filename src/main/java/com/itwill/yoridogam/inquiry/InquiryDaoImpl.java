package com.itwill.yoridogam.inquiry;

import java.util.Collections;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("inquiryDao")
public class InquiryDaoImpl implements InquiryDao{

	public static final String NAMESPACE = "com.itwill.yoridogam.mapper.InquiryMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertInquiry(Inquiry inquiry) {
		sqlSession.insert(NAMESPACE+"insertInquiry", inquiry);
		return inquiry.getIb_no();
	}

	@Override
	public int updateInquiry(Inquiry inquiry) {
		sqlSession.update(NAMESPACE+"updateInquiry", inquiry);
		return inquiry.getIb_no();
	}

	@Override
	public int insertInquiryA(Inquiry inquiry) {
		sqlSession.insert(NAMESPACE+"insertInquiryA", inquiry);
		return inquiry.getIb_no();
	}

	@Override
	public int updateInquiryA(Inquiry inquiry) {
		return sqlSession.update(NAMESPACE+"updateInquiryA", inquiry);
	}

	@Override
	public int deleteInquiry(int ib_no) {
		return sqlSession.delete(NAMESPACE+"deleteInquiry", ib_no);
	}

	@Override
	public List<Inquiry> inquiryList() {
		List<Inquiry> inquiryList = sqlSession.selectList(NAMESPACE+"inquiryList");
		return inquiryList;
	}

	@Override
	public Inquiry selectByNoInquiry(int ib_no) {
		Inquiry selectByInquiry = sqlSession.selectOne(NAMESPACE+"selectByNoInquiry", ib_no);
		return selectByInquiry;
	}

	@Override
	public boolean updateInquiryViewCount(int ib_no) {
		boolean result = false;
		int updateCount = sqlSession.update(NAMESPACE+"updateInquiryViewCount", ib_no);
		if(updateCount>0) {
			result = true;
		}
		return result;
	}

	@Override
	public int countTotalInquiry() {
		return sqlSession.selectOne(NAMESPACE+"countTotalInquiry");
	}

	@Override
	public boolean countA(Inquiry inquiry) {
		boolean isExist = false;
		int countA = sqlSession.selectOne(NAMESPACE+"countA", inquiry);
		if (countA>1) {
			isExist = true;
		}
		return isExist;
	}


}
