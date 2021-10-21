package com.itwill.yoridogam.repository;

import java.util.ArrayList;

import com.itwill.yoridogam.domain.Cart;

public interface CartDao {

	/***********************장바구니 강의 추가***********************/
	int create(int ci_qty, int p_no, String sUserId);
	
	/********************장바구니 강의 수량 변경********************/
	int increaseQty(int p_no, String sUserId);
	
	int decreaseQty(int p_no, String sUserId);
	
	/******************장바구니 내 강의 특정 삭제******************/
	int deleteByNo(int ci_no, String sUserId);
	
	/******************장바구니 내 강의 전체 삭제******************/
	int deleteCart(String sUserId);
	
	/******************장바구니 강의리스트 전체출력******************/
	ArrayList<Cart> cartList(String sUserId);
	
	/******************장바구니 내 강의 존재 여부******************/
	boolean isExistCart(String sUserId);
	
	/******************장바구니 내 특정 강의 존재 여부******************/
	boolean isExistCartItem(int p_no, String sUserId);
}
