package com.one.sugarcane.course.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.Course;
@Repository
public class CourseDaoImpl{
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * 分页查询机构所有课程
	 * @param page
	 * @return
	 */
	public List<Course> findAll(int page){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Course");
		q.setFirstResult((page-1)*6);
		q.setMaxResults(6);	
		return q.list();
	}	
	/**
	 * 通过ID查询课程
	 * @param id
	 * @return
	 */
	public Course selectByCourseID(int id) {
		return this.sessionFactory.getCurrentSession().get(Course.class,id);
	}
	/**
	 * 查询课程总数
	 * @return
	 */
	public int findRowsCount(){
		Query qc=this.sessionFactory.getCurrentSession().createQuery("select COUNT(id) from Course");
		Number number = (Number)qc.uniqueResult();
		int count = number.intValue();
		return count;
		} 	
	/**
	 * 通过ID删除一门课程
	 * @param id
	 */
	public void deleteCourse(int id) {
		Query q=this.sessionFactory.getCurrentSession().createQuery("delete from Course where id="+id);
		q.executeUpdate();
	}
	/**
	 * 更新一门课程信息
	 * @param course
	 */
	public void updateCourse(Course course) {
		this.sessionFactory.getCurrentSession().saveOrUpdate(course);
	}
	/**
	 * 增加一门课程
	 * @param course
	 */
	public void saveCourse(Course course) {
		this.sessionFactory.getCurrentSession().save(course);
	}
}
