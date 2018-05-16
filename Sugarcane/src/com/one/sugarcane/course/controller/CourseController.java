/**
 * 
 * @auther 杜凯玲
 * @date 2018.5.15
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
	 * 查询所有课程
	 * @param coursePageIndex
	 * @param response
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("/listAllCourse")
	public void ListAllCourse(
			@RequestParam("coursePageIndex")Integer coursePageIndex,
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
		response.sendRedirect("/Sugarcane/front/courseLists.jsp");
		
	}
	/**
	 * 展示课程详情
	 * @param courseID
	 * @param session
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	 @RequestMapping("courseDetails")
		public void listsinglecake(@RequestParam(value="courseID")Integer courseID,
				HttpSession session,
				HttpServletRequest request,
				HttpServletResponse response) throws IOException {
		    Course course=this.courseServiceImpl.getCourseById(courseID);
			session.setAttribute("courseDetails", course);
			response.sendRedirect("/Sugarcane/front/courseDetails.jsp");  
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * 分页查询机构所有课程
	 * @param coursePageIndex
	 * @param response
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("/listCourse")
	public void ListCourse(
			@RequestParam("coursePageIndex")Integer coursePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {
		Integer sellerID=(Integer) session.getAttribute("sellerID");
		List<Course> courseList=this.courseServiceImpl.listAll(coursePageIndex,sellerID);		
		List<SellerCourseType> sellerCourseTypeList=this.courseServiceImpl.listSellerCourseType(sellerID);
		//分页
		int pageCount=this.courseServiceImpl.getPageCount();	
		int pageIndex=1;	
		 if(0==pageIndex|| pageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",coursePageIndex);
			 	}	
		session.setAttribute("sellerCourseTypeList", sellerCourseTypeList);
		session.setAttribute("coursePageIndex",pageIndex);
		session.setAttribute("coursePageCount",pageCount);
		session.setAttribute("courseList", courseList);
		response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
		
	}
	//需要解决问题sellerCourseTypeID
	@RequestMapping("/listCourseBySellerCourseType")
	public void ListCourseBySellerCourseType(
			@RequestParam(value="sellerCourseTypeID",defaultValue="3")Integer sellerCourseTypeID,
			@RequestParam(value="courseBySellerTypePageIndex",defaultValue="1")Integer courseBySellerTypePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {
		Integer sellerID=(Integer) session.getAttribute("sellerID");
		List<Course> courseList=this.courseServiceImpl. listCourseBySellerCourseType(courseBySellerTypePageIndex,sellerCourseTypeID,sellerID);
		List<SellerCourseType> sellerCourseTypeList=this.courseServiceImpl.listSellerCourseType(sellerID);
		//分页
		int pageCount=this.courseServiceImpl.getPageCountBySellerCourseType(sellerCourseTypeID);	
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
		response.sendRedirect("/Sugarcane/organization/manageCourseBySellerCourseType.jsp");
		
	}
	//需要解决问题sellerCourseTypeID
	@RequestMapping("/updateOneCourse")
	public void UpdateOneCourse(
			@RequestParam("courseID")Integer courseID,
			@RequestParam("courseName")String courseName,
			@RequestParam("price")String price,
			@RequestParam("phoneNumber")String phoneNumber,
			@RequestParam("teacher")String teacher,
			@RequestParam("sellerCourseTypeID")Integer sellerCourseTypeID,
//			@RequestParam("publicCourseType")String publicCourseType,
			HttpServletResponse response,
			HttpServletRequest request,HttpSession session) throws IOException {
		List<Course> courseList=this.courseServiceImpl.listAll();
		Integer sellerID=(Integer) session.getAttribute("sellerID");
		Integer publicCourseTypeID=(Integer) session.getAttribute("publicCourseTypeID");
		SellerLogin sellerLogin=(SellerLogin) session.getAttribute("sellerLogin");
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
	//需要解决问题sellerCourseTypeID
	@RequestMapping("/addOneCourse")
	public void AddOneCourse(
			@RequestParam("courseName")String courseName,
			@RequestParam("price")double price,
			@RequestParam("video")String video,
			@RequestParam("phoneNumber")String phoneNumber,
			@RequestParam("teacher")String teacher,
			@RequestParam("introductionImg1")String introductionImg1,
			@RequestParam("sellerCourseTypeID")Integer sellerCourseTypeID,
//			@RequestParam("introductionImg2")String introductionImg2,
//			@RequestParam("introductionImg3")String introductionImg3,
			HttpServletResponse response,
			HttpServletRequest request,HttpSession session) throws IOException {
	Course newCourse=new Course();	
	SellerCourseType sellerCourseType=this.courseServiceImpl.selectSellerCourseTypeByID(sellerCourseTypeID);
	SellerLogin sellerLogin=(SellerLogin) session.getAttribute("sellerLogin");
//   PublicCourseType publicCourseType=this.courseServiceImpl.selectPublicCourseTypeByID(sellerCourseType);
	newCourse.setCourseName(courseName);
	newCourse.setPhoneNumber(phoneNumber);
	newCourse.setPrice(price);
	newCourse.setTeacher(teacher);
	newCourse.setIntroductionImg1(introductionImg1);
	newCourse.setVideo(video);
	newCourse.setSellerCourseType(sellerCourseType);
	newCourse.setSellerLogin(sellerLogin);
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
