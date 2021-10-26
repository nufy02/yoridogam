package com.itwill.yoridogam.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.yoridogam.teacher.Teacher;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.ProductMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(Product product) throws Exception{
		return sqlSession.insert(NAMESPACE+"create",product);
	}
	@Override
	public int updateByNo(Product product) throws Exception{
		return sqlSession.update(NAMESPACE+"updateByNo",product);
	}
	@Override
	public List<Product> selectAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectAll");
	}
	@Override
	public Product selectByNo(int p_no) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectByNo",p_no);
	}
	@Override
	public int deleteByNo(int p_no) throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteByNo",p_no);
	}
	
	/*  상품 강사 정보 얻기 */
	public Teacher selectTByP_no(int p_no)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectTByP_no",p_no);
	}

	
}
