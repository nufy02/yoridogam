package com.itwill.yoridogam.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.yoridogam.domain.Notice;

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
	public int updateNoti(String noti_title, String noti_content, int noti_no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("noti_title", noti_title);
		map.put("noti_content", noti_content);
		map.put("noti_no", noti_no);
		return sqlSession.update(NAMESPACE+"updateNoti", map);
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

	
}

