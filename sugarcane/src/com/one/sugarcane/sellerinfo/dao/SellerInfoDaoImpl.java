package com.one.sugarcane.sellerinfo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.Course;
import com.one.sugarcane.entity.PublicCourseType;
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
	/**
	 * temp 获取所有培训机构
	 * @author 王孜润	 
	 * @date 2018/5/21
	 */
	public List<SellerInfo> getOrg() {
		Query q = sessionFactory.getCurrentSession().createQuery("from SellerInfo");
		return q.list();
	}
	
	/**
	 * 通过id查找seller
	 * @name 王孜润
	 */
	public SellerInfo findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		SellerInfo sellerInfo = (SellerInfo)session.get(SellerInfo.class, id);
		return sellerInfo;
	}
	/**
	 * 通过id查找course
	 * @name 王孜润
	 */
	public List<Course> findBySellerId(int sellerId,int page) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Course where sellerID="+sellerId);
		query.setFirstResult((page-1)*6);
		query.setMaxResults(6);
		List<Course> list = query.list();
		return list;
	}
	
	/**
	 * 查询所有课程publicCourseType
	 * @author 王孜润
	 * @date 2018/5/22
	 * **/
	public List<PublicCourseType> selectAll() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from PublicCourseType");
		List<PublicCourseType> list = query.list();
		return list;
	}
	
	/**
	 * 删除方法
	 * @author 王孜润
	 * @date 2018/5/22
	 * **/
	public boolean delete(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("delete from Course where courseID=?");
		query.setParameter(0, id);
		query.executeUpdate();
		
		tx.commit();
		session.close();
		return true;
	}
	/**
	 * 查询课程数
	 * @return
	 */
	public int findCount(int sellerId) {
		Query fc=this.sessionFactory.getCurrentSession().createQuery("select COUNT(id) from Course where sellerId=?");	
		fc.setParameter(0, sellerId);
		Number number = (Number)fc.uniqueResult();
		int count = number.intValue();
		return count;		 
	}
	
	
}


