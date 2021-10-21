package com.itwill.yoridogam.domain;

import java.util.Date;

public class Inquiry {

	/*
		 이름        널?       유형             
	------------ -------- -------------- 
	IB_NO        NOT NULL	NUMBER(10)     
	IB_TITLE            	VARCHAR2(100)  
	IB_CONTENT         	  	VARCHAR2(1000) 
	IB_DATE            	  	DATE           
	IB_VIEWCOUNT          	NUMBER(10)     
	IB_DEPTH              	NUMBER(10)     
	IB_GROUPNO   NOT NULL 	NUMBER(10)     
	IB_STEP      NOT NULL 	NUMBER(10)     
	M_ID                  	VARCHAR2(20) 
	 */
	
	private int ib_no;
	private String ib_title;
	private String ib_content;
	private Date ib_date;
	private int ib_viewCount;
	private int ib_depth;
	private int ib_groupNo;
	private int ib_step;
	private String m_id;
	
	
	
}
