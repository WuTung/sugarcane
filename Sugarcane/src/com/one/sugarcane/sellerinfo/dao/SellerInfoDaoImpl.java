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
	
	/**
	 * 培训机构注册
	 * @author 张梦洲,狗晟儿，傻崔
	 * @date 2018/4/30
	 */
	public void saveSellerInfo(SellerInfo sellerInfo) {
		this.sessionFactory.getCurrentSession().save(sellerInfo);
		this.sessionFactory.getCurrentSession().save(sellerInfo.getSellerLogin());
	}
}
