package com.itwill.yoridogam.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwill.yoridogam.domain.Cart;

@Repository("cartDao")
public class CartDaoImpl implements CartDao{
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.CartMapper.";
	private SqlSession sqlSession;
	
	@Override
	public int create(int ci_qty, int p_no, String sUserId) {
		return 0;
	}

	@Override
	public int increaseQty(int p_no, String sUserId) {
		return 0;
	}

	@Override
	public int decreaseQty(int p_no, String sUserId) {
		return 0;
	}

	@Override
	public int deleteByNo(int ci_no, String sUserId) {
		return 0;
	}

	@Override
	public int deleteCart(String sUserId) {
		return 0;
	}

	@Override
	public ArrayList<Cart> cartList(String sUserId) {
		return null;
	}

	@Override
	public boolean isExistCart(String sUserId) {
		return false;
	}

	@Override
	public boolean isExistCartItem(int p_no, String sUserId) {
		return false;
	}

		
}
