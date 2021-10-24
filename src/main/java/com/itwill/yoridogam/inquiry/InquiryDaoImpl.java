package com.itwill.yoridogam.inquiry;

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
		return sqlSession.insert(NAMESPACE+"insertInquiry", inquiry);
	}

	@Override
	public int updateInquiry(Inquiry inquiry) {
		return sqlSession.update(NAMESPACE+"updateInquiry", inquiry);
	}

	@Override
	public int insertInquiryA(Inquiry inquiry) {
		return sqlSession.insert(NAMESPACE+"insertInquiryA", inquiry);
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
	public List<Inquiry> selectByAllInquiry() {
		List<Inquiry> inquiryList = sqlSession.selectList(NAMESPACE+"selectByAllInquiry");
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


}
