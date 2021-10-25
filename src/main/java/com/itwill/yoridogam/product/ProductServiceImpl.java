package com.itwill.yoridogam.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public int create(Product product) throws Exception{
		return productDao.create(product);
	}
	@Override
	public int updateByNo(Product product) throws Exception{
		return productDao.updateByNo(product);
	}
	@Override
	public List<Product> selectAll() throws Exception{
		return productDao.selectAll();
	}
	@Override
	public Product selectByNo(int p_no) throws Exception{
		return productDao.selectByNo(p_no);
	}
	@Override
	public int deleteByNo(int p_no) throws Exception{
		return productDao.deleteByNo(p_no);
	}
	
}
