package com.one.sugarcane.sellerlogin.dao;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.SellerLogin;
@Repository
public class SellerLoginDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
}
