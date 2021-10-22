package com.itwill.yoridogam.pay;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PayDao {
	
	/***********************온라인 강의 결제***********************/
	int createPay(Pay pay);
	
	/***********************특정 결제 취소 및 삭제***********************/
	int deletePayByNo(int pay_no);
	
	/***********************전체 결제내역 삭제***********************/
	int deletePay(String sUserId);
	
	/***********************회원 수강내역 존재 여부***********************/
	boolean isExistPay(String sUserId);
	
	/***********************회원 결제 특정 조회***********************/
	Pay findPayByNo(Pay pay);
	
	/***********************회원 결제 전체 조회***********************/
	List<Pay> findPayList(String sUserId);
	
	/***********************회원 결제 전체 조회(강의 정보 포함)***********************/
	List<Pay> findPayDetailList(String sUserId);
	
	/***********************회원 결제 상세 조회***********************/
	Pay findPayDetailByNo(int pi_no);
	
}
