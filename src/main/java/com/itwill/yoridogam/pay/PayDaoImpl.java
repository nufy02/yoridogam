package com.itwill.yoridogam.pay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("payDao")
public class PayDaoImpl implements PayDao{
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.CartMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int createPay(Pay pay) {
		return sqlSession.insert(NAMESPACE+"createPay",pay);
	}

	@Override
	public int deletePayByNo(int pay_no) {
		return sqlSession.delete(NAMESPACE+"deletePayByNo",pay_no);
	}

	@Override
	public int deletePay(String sUserId) {
		return sqlSession.delete(NAMESPACE+"deletePay",sUserId);
	}

	@Override
	public boolean isExistPay(String sUserId) {
		boolean isExistPay=true;
		int payCount=sqlSession.selectOne(NAMESPACE+"isExistPay",sUserId);
		if(payCount==0) {
			isExistPay=false;
		}
		return isExistPay;
	}

	@Override
	public Pay findPayByNo(Pay pay) {
		return sqlSession.selectOne(NAMESPACE+"findPayByNo",pay);
	}

	@Override
	public List<Pay> findPayList(String sUserId) {
		return sqlSession.selectList(NAMESPACE+"findPayList",sUserId);
	}

	@Override
	public List<Pay> findPayDetailList(String sUserId) {
		return sqlSession.selectList(NAMESPACE+"findPayDetailList",sUserId);
	}

	@Override
	public Pay findPayDetailByNo(int pi_no) {
		return sqlSession.selectOne(NAMESPACE+"findPayDetailByNo",pi_no);
	}

}
