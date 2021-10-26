package com.itwill.yoridogam.productTime;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productTimeService")
public class ProductTimeServiceImpl implements ProductTimeService{

	@Autowired
	private ProductTimeDao productTimeDao;

	@Override
	public List<ProductTime> selectAll(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.selectAll(p_no);
	}

	@Override
	public ProductTime selectByNo(int pt_no) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.selectPtNo(pt_no);
	}


	@Override
	public int create(ProductTime productTime) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.create(productTime);
	}

	@Override
	public int update(ProductTime productTime) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.update(productTime);
	}

	@Override
	public int addPt_rsv(ProductTime productTime) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.addPt_rsv(productTime);
	}

	@Override
	public int delete(int pt_no) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.delete(pt_no);
	}

}