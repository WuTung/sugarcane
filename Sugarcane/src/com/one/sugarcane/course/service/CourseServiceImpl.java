/**
 * 
 * @auther 杜凯玲
 * @date 2018.5.15
 */
package com.one.sugarcane.course.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.one.sugarcane.course.dao.CourseDaoImpl;
import com.one.sugarcane.entity.Course;
import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.SellerCourseType;
import com.one.sugarcane.entity.SellerInfo;
import com.one.sugarcane.entity.SellerLogin;

@Service
@Transactional(readOnly = false)
public class CourseServiceImpl {
	@Resource
	private CourseDaoImpl courseDaoImpl;

	/**
	 * 查询所有课程
	 * 
	 * @return
	 */
	public List<Course> listAll() {
		return this.courseDaoImpl.findAll();
	}

	/**
	 * 分页查找所有课程
	 * 
	 * @param page
	 * @return
	 */
	public List<Course> listAll(int page) {
		return this.courseDaoImpl.findAll(page);
	}

	/**
	 * 分页查询所有该机构课程
	 * 
	 * @param page
	 * @param sellerID
	 * @return
	 */
	public List<Course> listAll(int page, int sellerID) {
		return this.courseDaoImpl.findAll(page, sellerID);
	}

	public List<SellerCourseType> listSellerCourseType(int sellerID) {
		return this.courseDaoImpl.findSellerCourseType(sellerID);
	}

	/**
	 * 通过商家分类分页查询课程
	 * 
	 * @param page
	 * @param sellerCourseTypeID
	 * @return
	 */
	public List<Course> listCourseBySellerCourseType(int page, int sellerCourseTypeID, int sellerID) {
		return this.courseDaoImpl.findCourseBySellerCourseType(page, sellerCourseTypeID, sellerID);
	}

	/**
	 * 通过ID查询课程商家分类
	 * 
	 * @param id
	 * @return
	 */
	public SellerCourseType selectSellerCourseTypeByID(int id) {
		return this.courseDaoImpl.selectSellerCourseTypeByID(id);
	}

	/**
	 * 通过ID查询课程公共分类
	 * 
	 * @param id
	 * @return
	 */
	public PublicCourseType selectPublicCourseTypeByID(int id) {
		return this.courseDaoImpl.selectPublicCourseTypeByID(id);
	}

	/**
	 * 通过ID查询商家
	 * 
	 * @param id
	 * @return
	 */
	public SellerLogin selectSellerByID(int id) {
		return this.courseDaoImpl.selectSellerByID(id);
	}

	/**
	 * 通过ID查询商家信息
	 * 
	 * @param id
	 * @return
	 */
	public SellerInfo selectSellerInfoByID(int id) {
		return this.courseDaoImpl.selectSellerInfoByID(id);
	}

	/**
	 * 删除一门课程
	 * 
	 * @param id
	 */
	public void deleteOneCourse(int id) {
		this.courseDaoImpl.deleteCourse(id);
	}

	/**
	 * 更新一门课程
	 * 
	 * @param cake
	 */
	public void updateOneCourse(Course course) {
		this.courseDaoImpl.updateCourse(course);
	}

	/**
	 * 增加课程
	 * 
	 * @param cake
	 */
	public void addOneCourse(Course course) {
		this.courseDaoImpl.saveCourse(course);
	}

	/**
	 * 通过id查询课程
	 * 
	 * @return
	 */
	public Course getCourseById(int id) {
		return this.courseDaoImpl.selectByCourseID(id);
	}

	/**
	 * 得到总页码数
	 * 
	 * @return
	 */
	public int getPageCount() {
		if ((this.courseDaoImpl.findRowsCount()) % 6 == 0) {
			return (int) (this.courseDaoImpl.findRowsCount() / 6);
		} else {
			return (int) (this.courseDaoImpl.findRowsCount() / 6 + 1);
		}
	}

	public int getPageCountBySellerCourseType(int sellerCourseTypeID) {
		if ((this.courseDaoImpl.findRowsCountBySellerCourseType(sellerCourseTypeID)) % 6 == 0) {
			return (int) (this.courseDaoImpl.findRowsCountBySellerCourseType(sellerCourseTypeID) / 6);
		} else {
			return (int) (this.courseDaoImpl.findRowsCountBySellerCourseType(sellerCourseTypeID) / 6 + 1);
		}
	}

}
