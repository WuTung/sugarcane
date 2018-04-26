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
	@RequestMapping("/listCourse")
	public void ListCourse(@RequestParam("coursePageIndex")Integer coursePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {
		List<Course> courseList=this.courseServiceImpl.listAll(coursePageIndex);
		//分页
		int pageCount=this.courseServiceImpl.getPageCount();	
		int PageIndex=1;	
		 if(0==coursePageIndex|| coursePageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",coursePageIndex);
			 	}		
		session.setAttribute("coursePageIndex",PageIndex);
		session.setAttribute("coursePageCount",pageCount);
		session.setAttribute("adminCourseList", courseList);
		response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
		
	}
	
	
	
	@RequestMapping("/updateOneCourse")
	public void updateOneCourse(
			HttpServletResponse response,
			HttpServletRequest request) {
		
	}
}
