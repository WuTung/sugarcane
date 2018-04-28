package com.one.sugarcane.sellerlogin.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.one.sugarcane.sellerlogin.dao.SellerLoginDaoImpl;
import com.one.sugarcane.entity.SellerLogin;

@Service
@Transactional(readOnly=false)
public class SellerLoginServiceImpl {
	@Resource
	private SellerLoginDaoImpl sellerLoginDaoImpl;
}
