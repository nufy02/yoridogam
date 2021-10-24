package com.itwill.yoridogam.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public int insertNoti(Notice notice) {
		return noticeDao.insertNoti(notice);
	}

	@Override
	public int updateNoti(Notice notice) {
		return noticeDao.updateNoti(notice);
	}

	@Override
	public int deleteNoti(int noti_no) {
		return noticeDao.deleteNoti(noti_no);
	}

	@Override
	public List<Notice> selectAllNoti() {
		return noticeDao.selectAllNoti();
	}

	@Override
	public Notice selectByNotiNo(int noti_no) {
		return noticeDao.selectByNotiNo(noti_no);
	}

	@Override
	public boolean updateNotiViewCount(int noti_no) {
		boolean result = false;
		result = noticeDao.updateNotiViewCount(noti_no);
		return result;
	}

	

}
