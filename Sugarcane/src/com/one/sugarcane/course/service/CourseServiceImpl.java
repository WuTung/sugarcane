/**
 * 
 * @auther 杜凯玲
 * @date 2018.4.30
 */
package com.one.sugarcane.course.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.one.sugarcane.course.dao.CourseDaoImpl;
import com.one.sugarcane.entity.Course;

@Service
@Transactional(readOnly=false)
public class CourseServiceImpl {
	@Resource
	private CourseDaoImpl courseDaoImpl;
	/**
	 * 查询所有课程
	 * @return
	 */
	public List<Course> listAll(){
		return this.courseDaoImpl.findAll();
	}
	/**
	 * 分页查找所有该机构课程
	 * @param page
	 * @return
	 */
	public List<Course> listAll(int page){
		return this.courseDaoImpl.findAll(page);
	}
	/**
	 * 删除一门课程
	 * @param id
	 */
	public void deleteOneCourse(int id) {
		this.courseDaoImpl.deleteCourse(id);
	}
	/**
	 * 更新一门课程
	 * @param cake
	 */
	public void updateOneCourse(Course course) {
		this.courseDaoImpl.updateCourse(course);
	}
	/**
	 * 增加课程
	 * @param cake
	 */
	public void addOneCourse(Course course) {
		this.courseDaoImpl.saveCourse(course);
	}
	/**
	 * 通过id查询课程
	 * @return
	 */
	public Course getCourseById(int id) {
	return this.courseDaoImpl.selectByCourseID(id);
	}
	/**
	 * 得到总页码数
	 * @return
	 */
	public int getPageCount() {
        if((this.courseDaoImpl.findRowsCount())%6==0) {
		    return (int)(this.courseDaoImpl.findRowsCount()/6);
		}else {
		    return (int)(this.courseDaoImpl.findRowsCount()/6+1);	
		}	
	}
}
