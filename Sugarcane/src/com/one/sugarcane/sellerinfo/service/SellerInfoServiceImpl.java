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
}
