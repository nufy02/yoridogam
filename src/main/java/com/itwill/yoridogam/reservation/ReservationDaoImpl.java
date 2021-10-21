package com.itwill.yoridogam.reservation;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ReservationDao")
public class ReservationDaoImpl implements ReservationDao{
	
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.ReservationMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(Reservation reservation) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Reservation> selectAll(int m_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Reservation selectByNo(int m_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteByNo(int rsv_no, int m_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteAll(String sUserId) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
