/**
 * 
 * @auther 杜凯玲
 * @date 2018.4.30
 */
package com.one.sugarcane.course.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.one.sugarcane.course.service.CourseServiceImpl;
import com.one.sugarcane.entity.Course;

@Controller
@RequestMapping("course")
public class CourseController {
	@Resource
	private CourseServiceImpl courseServiceImpl;
	/**
	 * 分页查询机构所有课程
	 * @param coursePageIndex
	 * @param response
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("/listCourse")
	public void ListCourse(@RequestParam("coursePageIndex")Integer coursePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {
		List<Course> courseList=this.courseServiceImpl.listAll(coursePageIndex);
		//分页
		int pageCount=this.courseServiceImpl.getPageCount();	
		int pageIndex=1;	
		 if(0==pageIndex|| pageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",coursePageIndex);
			 	}		
		session.setAttribute("coursePageIndex",pageIndex);
		session.setAttribute("coursePageCount",pageCount);
		session.setAttribute("courseList", courseList);
		response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
		
	}
		
	@RequestMapping("/updateOneCourse")
	public void UpdateOneCourse(
			@RequestParam(value="courseID",required=false)Integer courseID,
			@RequestParam(value="courseName",required=false)String courseName,
			@RequestParam(value="price",required=false)String price,
			@RequestParam(value="phoneNumber",required=false)String phoneNumber,
			@RequestParam(value="teacher",required=false)String teacher,
//			@RequestParam("sellerCourseType")String sellerCourseType,
//			@RequestParam("publicCourseType")String publicCourseType,
			HttpServletResponse response,
			HttpServletRequest request) throws IOException {
		List<Course> courseList=this.courseServiceImpl.listAll();
		for(Course course:courseList) {
			if(course.getCourseID() ==courseID) {
				course=this.courseServiceImpl.getCourseById(courseID);			
				course.setCourseName(courseName);
				course.setPhoneNumber(phoneNumber);
				course.setPrice(Double.valueOf(price));
				course.setTeacher(teacher);
				this.courseServiceImpl.updateOneCourse(course);

				break;
			}//if
		}//for
		response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
	
	}
	
	@RequestMapping("/addOneCourse")
	public void AddOneCourse(
			@RequestParam("courseName")String courseName,
			@RequestParam("price")double price,
			@RequestParam("video")String video,
			@RequestParam("phoneNumber")String phoneNumber,
			@RequestParam("teacher")String teacher,
			@RequestParam("introductionImg1")String introductionImg1,
//			@RequestParam("introductionImg2")String introductionImg2,
//			@RequestParam("introductionImg3")String introductionImg3,
			HttpServletResponse response,
			HttpServletRequest request) throws IOException {
	Course newCourse=new Course();	
//	newCourse.setCourseID(courseID);
	newCourse.setCourseName(courseName);
	newCourse.setPhoneNumber(phoneNumber);
	newCourse.setPrice(price);
	newCourse.setTeacher(teacher);
	newCourse.setIntroductionImg1(introductionImg1);
	newCourse.setVideo(video);
//	newCourse.setIntroductionImg2(introductionImg2);
//	newCourse.setIntroductionImg3(introductionImg3);
	this.courseServiceImpl.addOneCourse(newCourse);
	response.sendRedirect("/Sugarcane/organization/addCourse.jsp");
	}
	
	
	
	@RequestMapping("/deleteOneCourse" )
	public void DeleteOneCourse(@RequestParam("courseID")String courseID,
			HttpServletResponse response,
			HttpSession session) throws IOException {
	this.courseServiceImpl.deleteOneCourse(Integer.parseInt(courseID));
	response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
		
	}
}
