package com.itwill.yoridogam.product;

import java.util.List;

public interface ProductDao {
	//상품 추가
	int create(Product product) throws Exception;
	//상품 업데이트
	int updateByNo(Product product) throws Exception;
	//상품 전체 리스트 조회
	List<Product> selectAll() throws Exception;
	//상품 1개 조회
	Product selectByNo(int p_no) throws Exception;
	//상품 삭제
	int deleteByNo(int p_no) throws Exception;
	
	
	/*  상품 강사 정보 얻기 */
	Product selectTByP_no(int p_no)throws Exception;
}