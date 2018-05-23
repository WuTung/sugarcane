/**
 * 
 * @auther 杜凯玲
 * @date 2018.5.15
 */
package com.one.sugarcane.course.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.Course;
import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.SellerCourseType;
import com.one.sugarcane.entity.SellerInfo;
import com.one.sugarcane.entity.SellerLogin;

@Repository
public class CourseDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * 查询所有课程
	 * 
	 * @return
	 */
	public List<Course> findAll() {
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Course");
		return q.list();
	}

	/**
	 * 分页查询所有课程
	 * 
	 * @param page
	 * @return
	 */
	public List<Course> findAll(int page) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Course");
		q.setFirstResult((page - 1) * 6);
		q.setMaxResults(6);
		return q.list();
	}

	/**
	 * 分页查询机构所有课程
	 * 
	 * @param page
	 * @param sellerID
	 * @return
	 */
	public List<Course> findAll(int page, int sellerID) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Course where sellerID=" + sellerID);
		q.setFirstResult((page - 1) * 6);
		q.setMaxResults(6);
		return q.list();

	}

	/**
	 * 通过ID查询课程
	 * 
	 * @param id
	 * @return
	 */
	public Course selectByCourseID(int id) {
		return this.sessionFactory.getCurrentSession().get(Course.class, id);
	}

	/**
	 * 查询商家所有分类
	 * 
	 * @param sellerID
	 * @return
	 */
	public List<SellerCourseType> findSellerCourseType(int sellerID) {
		Query q = this.sessionFactory.getCurrentSession()
				.createQuery("from SellerCourseType where sellerID=" + sellerID);
		return q.list();
	}

	/**
	 * 通过ID查询课程商家分类
	 * 
	 * @param id
	 * @return
	 */
	public SellerCourseType selectSellerCourseTypeByID(int id) {
		return this.sessionFactory.getCurrentSession().get(SellerCourseType.class, id);
	}

	/**
	 * 通过ID查询课程公共分类
	 * 
	 * @param id
	 * @return
	 */
	public PublicCourseType selectPublicCourseTypeByID(int id) {
		return this.sessionFactory.getCurrentSession().get(PublicCourseType.class, id);
	}

	/**
	 * 通过ID查询商家
	 * 
	 * @param id
	 * @return
	 */
	public SellerLogin selectSellerByID(int id) {
		return this.sessionFactory.getCurrentSession().get(SellerLogin.class, id);
	}

	/**
	 * 通过ID查询商家信息
	 * 
	 * @param id
	 * @return
	 */
	public SellerInfo selectSellerInfoByID(int id) {
		return this.sessionFactory.getCurrentSession().get(SellerInfo.class, id);
	}

	/**
	 * 通过商家分类分页查询课程
	 * 
	 * @param page
	 * @param sellerCourseTypeID
	 * @return
	 */
	public List<Course> findCourseBySellerCourseType(int page, int sellerCourseTypeID, int sellerID) {
		Query q = this.sessionFactory.getCurrentSession()
				.createQuery("from Course where sellerCourseTypeID=" + sellerCourseTypeID + "and sellerID=" + sellerID);
		q.setFirstResult((page - 1) * 6);
		q.setMaxResults(6);
		return q.list();
	}

	/**
	 * 查询课程总数
	 * 
	 * @return
	 */
	public int findRowsCount() {
		Query qc = this.sessionFactory.getCurrentSession().createQuery("select COUNT(id) from Course");
		Number number = (Number) qc.uniqueResult();
		int count = number.intValue();
		return count;
	}

	/**
	 * 通过机构课程分类查询课程总数
	 * 
	 * @param sellerCourseTypeID
	 * @return
	 */
	public int findRowsCountBySellerCourseType(int sellerCourseTypeID) {
		Query qc = this.sessionFactory.getCurrentSession()
				.createQuery("select COUNT(id) from Course where sellerCourseTypeID=" + sellerCourseTypeID);
		Number number = (Number) qc.uniqueResult();
		int count = number.intValue();
		return count;
	}

	/**
	 * 通过ID删除一门课程
	 * 
	 * @param id
	 */
	public void deleteCourse(int id) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("delete from Course where id=" + id);
		q.executeUpdate();
	}

	/**
	 * 更新一门课程信息
	 * 
	 * @param course
	 */
	public void updateCourse(Course course) {
		this.sessionFactory.getCurrentSession().saveOrUpdate(course);
	}

	/**
	 * 增加一门课程
	 * 
	 * @param course
	 */
	public void saveCourse(Course course) {
		this.sessionFactory.getCurrentSession().saveOrUpdate(course);
	}
}
