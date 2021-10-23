package com.itwill.yoridogam.payItem;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("pay_itemDao")
public class Pay_itemDaoImpl implements Pay_itemDao{
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.PayItemMapper.";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int createPayItem(Pay_item pay_item) {
		return sqlSession.insert(NAMESPACE+"createPayItem",pay_item);
	}

}
