package com.itwill.yoridogam.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public int create(Product product) throws Exception{
		return 0;
	}
	@Override
	public int updateByNo(Product product) throws Exception{
		return 0;
	}
	@Override
	public List<Product> selectAll() throws Exception{
		return null;
	}
	@Override
	public Product selectByNo(int p_no) throws Exception{
		return null;
	}
	@Override
	public int deleteByNo(int p_no) throws Exception{
		return 0;
	}
	
}
