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
import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.SellerCourseType;
import com.one.sugarcane.entity.SellerInfo;
import com.one.sugarcane.entity.SellerLogin;

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
	public void ListCourse(
			@RequestParam("sellerID")Integer sellerID,
			@RequestParam("coursePageIndex")Integer coursePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {
		List<Course> courseList=this.courseServiceImpl.listAll(coursePageIndex,1);
		List<SellerCourseType> sellerCourseTypeList=this.courseServiceImpl.listSellerCourseType(sellerID);
		//分页
		int pageCount=this.courseServiceImpl.getPageCount();	
		int pageIndex=1;	
		 if(0==pageIndex|| pageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",coursePageIndex);
			 	}	
		session.setAttribute("sellerID",sellerID);
		session.setAttribute("sellerCourseTypeList", sellerCourseTypeList);
		session.setAttribute("coursePageIndex",pageIndex);
		session.setAttribute("coursePageCount",pageCount);
		session.setAttribute("courseList", courseList);
		response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
		
	}
	@RequestMapping("/listCourseBySellerCourseType")
	public void ListCourseBySellerCourseType(
			@RequestParam(value="sellerCourseTypeID",defaultValue="1")Integer sellerCourseTypeID,
			@RequestParam(value="courseBySellerTypePageIndex",defaultValue="1")Integer courseBySellerTypePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {
		Integer sellerID=(Integer) session.getAttribute("sellerID");
		List<Course> courseList=this.courseServiceImpl. listCourseBySellerCourseType(courseBySellerTypePageIndex,sellerCourseTypeID,1);//sellerID
		List<SellerCourseType> sellerCourseTypeList=this.courseServiceImpl.listSellerCourseType(1);//sellerID
		//分页
		int pageCount=this.courseServiceImpl.getPageCount();	
		int pageIndex=1;	
		 if(0==pageIndex|| pageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",courseBySellerTypePageIndex);
			 	}		
		session.setAttribute("sellerCourseTypeList", sellerCourseTypeList);
		session.setAttribute("coursePageIndex",pageIndex);
		session.setAttribute("coursePageCount",pageCount);
		session.setAttribute("courseList", courseList);
		response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
		
	}
	
	@RequestMapping("/updateOneCourse")
	public void UpdateOneCourse(
			@RequestParam("courseID")Integer courseID,
			@RequestParam("courseName")String courseName,
			@RequestParam("price")String price,
			@RequestParam("phoneNumber")String phoneNumber,
			@RequestParam("teacher")String teacher,
			@RequestParam(value="sellerCourseTypeID",defaultValue="1")Integer sellerCourseTypeID,
//			@RequestParam("publicCourseType")String publicCourseType,
			HttpServletResponse response,
			HttpServletRequest request,HttpSession session) throws IOException {
		List<Course> courseList=this.courseServiceImpl.listAll();
		Integer sellerID=(Integer) session.getAttribute("sellerID");
		Integer publicCourseTypeID=(Integer) session.getAttribute("publicCourseTypeID");
		SellerLogin sellerLogin=this.courseServiceImpl.selectSellerByID(sellerID);
	    PublicCourseType publicCourseType=this.courseServiceImpl.selectPublicCourseTypeByID(1);//publicCourseTypeID
	    SellerCourseType sellerCourseType=this.courseServiceImpl.selectSellerCourseTypeByID(sellerCourseTypeID);
		for(Course course:courseList) {
			if(course.getCourseID() == courseID) {
				course=this.courseServiceImpl.getCourseById(courseID);			
				course.setCourseName(courseName);
				course.setPhoneNumber(phoneNumber);
				course.setPrice(Double.valueOf(price));
				course.setTeacher(teacher);
				course.setPublicCourseType(publicCourseType);
				course.setSellerLogin(sellerLogin);
				course.setSellerCourseType(sellerCourseType);
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
			@RequestParam(value="sellerCourseTypeID",defaultValue="1")Integer sellerCourseTypeID,
//			@RequestParam("sellerID")Integer sellerID,
//			@RequestParam("introductionImg2")String introductionImg2,
//			@RequestParam("introductionImg3")String introductionImg3,
			HttpServletResponse response,
			HttpServletRequest request) throws IOException {
	Course newCourse=new Course();	
	SellerCourseType sellerCourseType=this.courseServiceImpl.selectSellerCourseTypeByID(sellerCourseTypeID);
//	SellerLogin sellerLogin=this.courseServiceImpl.selectSellerByID(sellerID);
//   PublicCourseType publicCourseType=this.courseServiceImpl.selectPublicCourseTypeByID(sellerCourseType);
//	newCourse.setCourseID(courseID);
	newCourse.setCourseName(courseName);
	newCourse.setPhoneNumber(phoneNumber);
	newCourse.setPrice(price);
	newCourse.setTeacher(teacher);
	newCourse.setIntroductionImg1(introductionImg1);
	newCourse.setVideo(video);
	newCourse.setSellerCourseType(sellerCourseType);
//	newCourse.setSellerLogin(sellerLogin);
//	newCourse.setIntroductionImg2(introductionImg2);
//	newCourse.setIntroductionImg3(introductionImg3);

	this.courseServiceImpl.addOneCourse(newCourse);
	response.sendRedirect("/Sugarcane/organization/addCourse.jsp");
	}
	
	
	/**
	 * 删除一门课程
	 * @param courseID
	 * @param response
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("/deleteOneCourse" )
	public void DeleteOneCourse(@RequestParam("courseID")String courseID,
			HttpServletResponse response,
			HttpSession session) throws IOException {
	this.courseServiceImpl.deleteOneCourse(Integer.parseInt(courseID));
	response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
		
	}
}
