package com.itwill.yoridogam.productTime;
/*
 이름      널? 유형            
------- -- ------------- 
PT_NO      NUMBER(10)    
PT_DATE    DATE          
PT_TIME    VARCHAR2(100) 
P_NO       NUMBER(10)
 */

import java.sql.Date;

import com.itwill.yoridogam.product.Product;

public class ProductTime {
	private int pt_no;
	private String pt_date;
	private String pt_time;
	private Product product;
	
	public ProductTime() {
		// TODO Auto-generated constructor stub
	}

	public ProductTime(int pt_no, String pt_date, String pt_time, Product product) {
		super();
		this.pt_no = pt_no;
		this.pt_date = pt_date;
		this.pt_time = pt_time;
		this.product = product;
	}

	public int getPt_no() {
		return pt_no;
	}

	public void setPt_no(int pt_no) {
		this.pt_no = pt_no;
	}

	public String getPt_date() {
		return pt_date;
	}

	public void setPt_date(String pt_date) {
		this.pt_date = pt_date;
	}

	public String getPt_time() {
		return pt_time;
	}

	public void setPt_time(String pt_time) {
		this.pt_time = pt_time;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	@Override
	public String toString() {
		return "ProductTime [pt_no=" + pt_no + ", pt_date=" + pt_date + ", pt_time=" + pt_time + "]\n";
	}
	
	
	
}
