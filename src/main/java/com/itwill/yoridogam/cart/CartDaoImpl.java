package com.itwill.yoridogam.cart;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("cartDao")
public class CartDaoImpl implements CartDao{
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.CartMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertCart(Cart cart) throws Exception{
		return sqlSession.insert(NAMESPACE+"insertCart",cart);
	}
	@Override
	public int increaseQty(Cart cart) {
		return sqlSession.update(NAMESPACE+"increaseQty",cart);
	}
	@Override
	public int decreaseQty(Cart cart) {
		return sqlSession.update(NAMESPACE+"decreaseQty",cart);
	}
	@Override
	public int deleteCartByNo(int ci_no) {
		return sqlSession.delete(NAMESPACE+"deleteCartByNo",ci_no);
	}
	@Override
	public int deleteCart(String sUserId) {
		return sqlSession.delete(NAMESPACE+"deleteCart",sUserId);
	}
	@Override
	public List<Cart> cartList(String sUserId) {
		return sqlSession.selectList(NAMESPACE+"cartList",sUserId);
	}
	@Override
	public boolean isExistCart(String sUserId) {
		boolean isExistCart=true;
		int cartCount=sqlSession.selectOne(NAMESPACE+"isExistCart",sUserId);
		if(cartCount==0) {
			isExistCart=false;
		}else if(cartCount>0){
			isExistCart=true;
		}
		return isExistCart;
	}
	@Override
	public boolean isExistCartItem(Cart cart) {
		boolean isExistCartItem=true;
		int cartItemCount=sqlSession.selectOne(NAMESPACE+"isExistCartItem",cart);
		if(cartItemCount==0) {
			isExistCartItem=false;
		}
		return isExistCartItem;
	}
	
}
