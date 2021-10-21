package com.itwill.yoridogam.notice;

import java.util.Date;

public class Notice {

	/*
	 이름             널?       유형             
	-------------- -------- -------------- 
	NOTI_NO        NOT NULL NUMBER(10)     
	NOTI_TITLE              VARCHAR2(100)  
	NOTI_DATE               DATE           
	NOTI_VIEWCOUNT          NUMBER(10)     
	NOTI_CONTENT            VARCHAR2(1000) 
	M_ID                    VARCHAR2(20)
	 */
	

	private int noti_no;
	private String noti_title;
	private Date noti_date;
	private int noti_viewCount;
	private String noti_content;
	private String m_id;
	
	public Notice() {
		// TODO Auto-generated constructor stub
	}

	public Notice(int noti_no, String noti_title, Date noti_date, int noti_viewCount, String noti_content,
			String m_id) {
		super();
		this.noti_no = noti_no;
		this.noti_title = noti_title;
		this.noti_date = noti_date;
		this.noti_viewCount = noti_viewCount;
		this.noti_content = noti_content;
		this.m_id = m_id;
	}

	public int getNoti_no() {
		return noti_no;
	}

	public void setNoti_no(int noti_no) {
		this.noti_no = noti_no;
	}

	public String getNoti_title() {
		return noti_title;
	}

	public void setNoti_title(String noti_title) {
		this.noti_title = noti_title;
	}

	public Date getNoti_date() {
		return noti_date;
	}

	public void setNoti_date(Date noti_date) {
		this.noti_date = noti_date;
	}

	public int getNoti_viewCount() {
		return noti_viewCount;
	}

	public void setNoti_viewCount(int noti_viewCount) {
		this.noti_viewCount = noti_viewCount;
	}

	public String getNoti_content() {
		return noti_content;
	}

	public void setNoti_content(String noti_content) {
		this.noti_content = noti_content;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	@Override
	public String toString() {
		return "Notice [noti_no=" + noti_no + ", noti_title=" + noti_title + ", noti_date=" + noti_date
				+ ", noti_viewCount=" + noti_viewCount + ", noti_content=" + noti_content + ", m_id=" + m_id + "]";
	}
	
	
}
