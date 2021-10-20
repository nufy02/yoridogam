package com.itwill.yoridogam.domain;

import java.sql.Date;
import java.util.ArrayList;

public class Pay {
	private String pay_no;
	private Date pay_date;
	private String pay_type;
	//private Member member;
	private ArrayList<Pay_item> payItemList;
	
	public Pay() {
		
	}
	/*
	public Pay(String pay_no, Date pay_date, String pay_type, Member member, ArrayList<Pay_item> payItemList) {
		super();
		this.pay_no = pay_no;
		this.pay_date = pay_date;
		this.pay_type = pay_type;
		this.member = member;
		this.payItemList = payItemList;
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
	}

	public Date getPay_date() {
		return pay_date;
	}

	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}

	public String getPay_type() {
		return pay_type;
	}

	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public ArrayList<Pay_item> getPayItemList() {
		return payItemList;
	}

	public void setPayItemList(ArrayList<Pay_item> payItemList) {
		this.payItemList = payItemList;
	}
	*/
	
}
