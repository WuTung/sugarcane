package com.one.sugarcane.sellerinfo.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
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
	@SuppressWarnings("unchecked")
	public SellerInfo fineByName(String name, String email) {
		
		Session session = sessionFactory.getCurrentSession();
		Query<SellerInfo> query = session.createQuery("from SellerInfo where sellerName=? and sellerEmail=? ");
		query.setParameter(0, name);
		query.setParameter(1, email);
		SellerInfo sellerinfo = query.uniqueResult();
		return sellerinfo;
	}
	public void updateSellerInfo(SellerInfo sellerinfo) {
		Session session = sessionFactory.getCurrentSession();
		session.update(sellerinfo);
		
	}
	@SuppressWarnings("unchecked")
	public SellerInfo findByEmail(String email) {
		
		Session session = sessionFactory.getCurrentSession();
		Query<SellerInfo> query = session.createQuery("from SellerInfo where sellerEmail='"+email+"' ");
		SellerInfo sellerinfo = query.uniqueResult();
		return sellerinfo;
	}
}


