package com.one.sugarcane.sellerinfo.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.one.sugarcane.sellerinfo.dao.SellerInfoDaoImpl;
import com.one.sugarcane.entity.SellerInfo;

@Service
@Transactional(readOnly=false)
public class SellerInfoServiceImpl {
	@Resource
	private SellerInfoDaoImpl sellerInfoDaoImpl;
	
	/**
	 * 培训机构注册
	 * @author 张梦洲，狗晟儿，傻崔
	 * @date 2018/4/30
	 */
	public void saveSellerInfo(SellerInfo sellerInfo) {
		sellerInfoDaoImpl.saveSellerInfo(sellerInfo);
	}
}
