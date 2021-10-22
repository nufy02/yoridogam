package com.itwill.yoridogam.product;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ProductDao")
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(Product product) throws Exception{
		return 0;
	}
	@Override
	public int updateByNo(Product product) throws Exception{
		return 0;
	}
	@Override
	public ArrayList<Product> selectAll() throws Exception{
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
