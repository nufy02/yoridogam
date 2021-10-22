package com.itwill.yoridogam.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao {
	public static final String NAMESPACE="com.itwill.yoridogam.mapper.NoticeMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertNoti(Notice notice) {
		return sqlSession.insert(NAMESPACE+"insertNoti", notice);
	}

	@Override
	public int updateNoti(Notice notice) {
		return sqlSession.update(NAMESPACE+"updateNoti", notice);
	}

	@Override
	public int deleteNoti(int noti_no) {
		return sqlSession.delete(NAMESPACE+"deleteNoti", noti_no);
	}

	@Override
	public List<Notice> selectAllNoti() {
		List<Notice> noticeList = sqlSession.selectList(NAMESPACE+"selectAllNoti");
		return noticeList;
	}

	@Override
	public int selectByNotiNo(int noti_no) {
		return sqlSession.selectOne(NAMESPACE+"selectByNotiNo", noti_no);
	}

	@Override
	public boolean updateNotiViewCount(int noti_no) {
		boolean result = false;
		int notiViewCount = sqlSession.update(NAMESPACE+"updateNotiViewCount", noti_no);
		if (notiViewCount>0) {
			result = true;
		}
		return result;
	}

	
}

