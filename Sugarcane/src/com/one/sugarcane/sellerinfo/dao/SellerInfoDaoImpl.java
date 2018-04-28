package com.one.sugarcane.sellerinfo.dao;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.SellerInfo;
@Repository
public class SellerInfoDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
}
