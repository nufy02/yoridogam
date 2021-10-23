package com.itwill.yoridogam.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.payItem.Pay_item;
import com.itwill.yoridogam.payItem.Pay_itemDao;
import com.itwill.yoridogam.product.ProductDao;

@Service("payService")
public class PayServiceImpl implements PayService{

	@Autowired
	private PayDao payDao;
	@Autowired
	private Pay_itemDao pay_itemDao;
	@Autowired
	private ProductDao productDao;

	// 강의페이지->결제
	@Override
	public int createPay(Pay pay, String sUserId, int pi_qty, int p_no) throws Exception{
		int payCCount=payDao.createPay(pay);
		Pay_item newPi=new Pay_item(0, pi_qty, pay.getPay_no(), productDao.selectByNo(p_no));
		int pICCount=pay_itemDao.createPayItem(newPi);
		int count=payCCount+pICCount;
		return count;
	}

	@Override
	public int createPayFromCart() throws Exception {
		//구상중..
		return 0;
	}

	@Override
	public int deletePayByNo(int pay_no) throws Exception {
		return payDao.deletePayByNo(pay_no);
	}

	@Override
	public int deletePay(String sUserId) throws Exception {
		return payDao.deletePay(sUserId);
	}

	@Override
	public boolean isExistPay(String sUserId) throws Exception {
		return payDao.isExistPay(sUserId);
	}

	@Override
	public Pay findPayByNo(Pay pay) throws Exception {
		return payDao.findPayByNo(pay);
	}

	@Override
	public List<Pay> findPayList(String sUserId) throws Exception {
		return payDao.findPayList(sUserId);
	}

	@Override
	public List<Pay> findPayDetailList(String sUserId) throws Exception {
		return payDao.findPayDetailList(sUserId);
	}

	@Override
	public Pay findPayDetailByNo(int pi_no) throws Exception {
		return payDao.findPayDetailByNo(pi_no);
	}

	
	
}

