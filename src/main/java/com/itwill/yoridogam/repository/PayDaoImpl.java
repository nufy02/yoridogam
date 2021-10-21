package com.itwill.yoridogam.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.yoridogam.domain.Pay;

@Repository("PayDao")
public class PayDaoImpl implements PayDao{
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.CartMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int createPay(Pay pay) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePayByNo(Pay pay) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePay(String sUserId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean isExistPay(String sUserId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Pay findPayByNo(Pay pay) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pay> findPayList(String sUserId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pay> findPayDetailList(String sUserId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pay findPayDetailByNo(String sUserId, int pi_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
