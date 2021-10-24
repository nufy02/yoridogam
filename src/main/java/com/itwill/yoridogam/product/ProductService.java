package com.itwill.yoridogam.product;

import java.util.List;

public interface ProductService {

	int create(Product product) throws Exception;

	int updateByNo(Product product) throws Exception;

	List<Product> selectAll() throws Exception;

	Product selectByNo(int p_no) throws Exception;

	int deleteByNo(int p_no) throws Exception;

}