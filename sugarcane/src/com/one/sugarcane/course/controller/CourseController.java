/**
 * 
 * @auther 杜凯玲
 * @date 2018.6.7
 */
package com.one.sugarcane.course.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
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
import com.one.sugarcane.entity.CourseType;
import com.one.sugarcane.entity.Evaluate;
import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.SellerCourseType;
import com.one.sugarcane.entity.SellerInfo;
import com.one.sugarcane.entity.SellerLogin;
import com.one.sugarcane.entity.UserInfo;
import com.one.sugarcane.io.ride.sensitive.SensitiveWordFilter;



@Controller
@RequestMapping("course")
public class CourseController {
	@Resource
	private CourseServiceImpl courseServiceImpl;
	@RequestMapping("/savaEvaluate")
	public void addOneEvaluate(
			@RequestParam(value="render",defaultValue="1")Integer render,
//			@RequestParam("userID")Integer userID,
			//@RequestParam("courseID")Integer courseID,
			//@RequestParam("evaluateImg")String evaluateImg,
			@RequestParam("content")String content,HttpServletResponse response,
			HttpServletRequest request,HttpSession session) throws IOException
			 {
		Evaluate evaluate=new Evaluate();
		Course course=(Course) session.getAttribute("courseDetails");
		UserInfo userInfo=(UserInfo) session.getAttribute("user");
        evaluate.setUserInfo(userInfo); 
		evaluate.setCourse(course);
		//evaluate.setEvaluateImg(evaluateImg);
		evaluate.setRender(render);
		//绝对路径
		SensitiveWordFilter filter = new SensitiveWordFilter("G:/javaEESpace/sugarcane0607/sugarcane/resource/key.txt");
		//相对路径不成功
		//SensitiveWordFilter filter = new SensitiveWordFilter("../../../../../resource/key.txt");
        String res = filter.replaceSensitiveWords(content,2);
        System.out.println(res);
				
	     evaluate.setContent(res);
		 this.courseServiceImpl.saveEvaluate(evaluate);
		 response.sendRedirect("/Sugarcane/front/courseDetails.jsp");  
		
	}
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
		List<PublicCourseType> publicCourseTypeList=this.courseServiceImpl.selectPublicCourseType();
		List<CourseType> courseTypeList=this.courseServiceImpl.selectCourseType();
		//显示分类
		int courseTypeLength=courseTypeList.size();
		System.out.println(courseTypeLength);
		for(int i = 0;i < courseTypeLength; i++) {
			CourseType courseType=this.courseServiceImpl.selectCourseTypeByID(i);
            List<PublicCourseType>publicCourseTypeLists=this.courseServiceImpl.selectPublicCourseType(courseTypeList.get(i).getCourseTypeID()-1);          
			session.setAttribute("courseType"+i, courseType);
            session.setAttribute("publicCourseTypeLists"+i, publicCourseTypeLists);
		}
//		for(Iterator<CourseType> courseTypeIT=courseTypeList.iterator();courseTypeIT.hasNext(); ) {
//			if(null!=courseTypeIT.next()) {
//			CourseType courseType=courseTypeIT.next();
//			List<PublicCourseType>publicCourseTypeLists=this.courseServiceImpl.selectPublicCourseType(courseTypeIT.next().getCourseTypeID());
//			session.setAttribute("courseType"+courseTypeIT.next().getCourseTypeID(), courseType);
//			Integer i=courseTypeIT.next().getCourseTypeID();
//			session.setAttribute("publicCourseTypeLists"+i, publicCourseTypeLists);
//			}
//		}
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
	 * public分类查询所有课程
	 * @param publicCourseTypeID
	 * @param coursePageIndex
	 * @param response
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("/listAllCourseByType")
	public void ListAllCourseByType(
			@RequestParam("publicCourseTypeID")Integer publicCourseTypeID,
			@RequestParam(value="coursePageIndex",defaultValue="1")Integer coursePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {
		List<PublicCourseType> publicCourseTypeList=this.courseServiceImpl.selectPublicCourseType();
		List<CourseType> courseTypeList=this.courseServiceImpl.selectCourseType();
		int courseTypeLength=courseTypeList.size();
		System.out.println(courseTypeLength);
		for(int i = 0;i < courseTypeLength; i++) {
			CourseType courseType=this.courseServiceImpl.selectCourseTypeByID(i);
            List<PublicCourseType>publicCourseTypeLists=this.courseServiceImpl.selectPublicCourseType(courseTypeList.get(i).getCourseTypeID()-1);          
			session.setAttribute("courseType"+i, courseType);
            session.setAttribute("publicCourseTypeLists"+i, publicCourseTypeLists);
		}
//		for(Iterator<CourseType> courseTypeIT=courseTypeList.iterator();courseTypeIT.hasNext(); ) {
//			CourseType courseType=courseTypeIT.next();
//			List<PublicCourseType>publicCourseTypeLists=this.courseServiceImpl.selectPublicCourseType(courseTypeIT.next().getCourseTypeID());
//			session.setAttribute("courseType"+courseTypeIT.next().getCourseTypeID(), courseType);
//          //  session.setAttribute("publicCourseTypeLists"+courseTypeIT.next().getCourseTypeID(), publicCourseTypeLists);
//		}
		//分页
		List<Course> courseList=this.courseServiceImpl.listCourseByPublicCourseType(coursePageIndex,publicCourseTypeID);
		int pageCount=this.courseServiceImpl.getPageCountByPublicCourseType(publicCourseTypeID);	
		int pageIndex=1;	
		 if(0==pageIndex|| pageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",coursePageIndex);
			 	}
//		session.setAttribute("courseTypeList", courseTypeList);
//		session.setAttribute("publicCourseTypeList", publicCourseTypeList);
		session.setAttribute("publicCourseTypeID", publicCourseTypeID);
		session.setAttribute("coursePageIndex",pageIndex);
		session.setAttribute("coursePageCount",pageCount);
		session.setAttribute("courseList", courseList);
		response.sendRedirect("/Sugarcane/front/courseListsByType.jsp");
		
	}
	/**
	 * 起始分类查询所有课程
	 * @param publicCourseTypeID
	 * @param coursePageIndex
	 * @param response
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("/listAllCourseByCourseType")
	public void ListAllCourseByCourseType(
			@RequestParam("courseTypeID")Integer courseTypeID,
			@RequestParam(value="coursePageIndex",defaultValue="1")Integer coursePageIndex,
			HttpServletResponse response,HttpSession session) throws IOException {	
		List<Course> courseList=this.courseServiceImpl.listCourseByCourseTypeID(courseTypeID,coursePageIndex);	
		session.setAttribute("courseList", courseList);
		session.setAttribute("courseTypeID", courseTypeID);
		List<PublicCourseType> publicCourseTypeList=this.courseServiceImpl.selectPublicCourseType();
		List<CourseType> courseTypeList=this.courseServiceImpl.selectCourseType();
		int courseTypeLength=courseTypeList.size();
		for(int i = 0;i < courseTypeLength; i++) {
			CourseType courseType=this.courseServiceImpl.selectCourseTypeByID(i);
            List<PublicCourseType>publicCourseTypeLists=this.courseServiceImpl.selectPublicCourseType(courseTypeList.get(i).getCourseTypeID()-1);          
			session.setAttribute("courseType"+i, courseType);
            session.setAttribute("publicCourseTypeLists"+i, publicCourseTypeLists);
		}
		//分页	
		int pageCount=this.courseServiceImpl.getPageCountByCourseType(courseTypeID);	
		int pageIndex=1;	
		 if(0==pageIndex|| pageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",coursePageIndex);
			 	}
		session.setAttribute("coursePageIndex",pageIndex);
		session.setAttribute("coursePageCount",pageCount);

		response.sendRedirect("/Sugarcane/front/courseListsByCourseType.jsp");
		
	}
	/**
	 * 展示课程详情
	 * @param courseID
	 * @param session
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	 @RequestMapping("/courseDetails")
		public void listsinglecake(@RequestParam(value="courseID")Integer courseID,
				@RequestParam(value="evaluatePageIndex",defaultValue="1")Integer evaluatePageIndex,
				HttpSession session,
				HttpServletRequest request,
				HttpServletResponse response) throws IOException {
		    Course course=this.courseServiceImpl.getCourseById(courseID);
		   
		    Integer sellerID=course.getSellerLogin().getSellerID();
		    SellerInfo sellerInfo=this.courseServiceImpl.selectSellerInfoByID(sellerID);
		    session.setAttribute("sellerInfo",sellerInfo);
			session.setAttribute("courseDetails", course);
			//评价
	
			List<Evaluate> evaluateList=this.courseServiceImpl.listEvaluateByCourseID(courseID, evaluatePageIndex);
			session.setAttribute("evaluateList", evaluateList);
			//分页
			int pageCount=this.courseServiceImpl.getEvaluatePageCountByCourse(courseID);	
			int pageIndex=1;	
			 if(0==pageIndex|| pageIndex<0) {
				 session.setAttribute("evaluatePageIndex",1);
				 
			 }else {
				 session.setAttribute("evaluatePageIndex",evaluatePageIndex);
				 	}
			 System.out.print(evaluatePageIndex);
			 System.out.println(pageCount);
			//session.setAttribute("evaluatePageIndex",pageIndex);
			session.setAttribute("evaluatePageCount",pageCount);
			
			
			response.sendRedirect("/Sugarcane/front/courseDetails.jsp");  
		}
	 
	 /**
	  * 评价分类显示课程详情
	  * @param render
	  * @param courseID
	  * @param evaluatePageIndex
	  * @param session
	  * @param request
	  * @param response
	  * @throws IOException
	  */
	 @RequestMapping("/courseDetailsByEvaluateRender")
		public void listsinglecakeByEvaluateRender(@RequestParam(value="render",defaultValue="1")Integer render,
				@RequestParam(value="courseID")Integer courseID,
				@RequestParam(value="evaluatePageIndex",defaultValue="1")Integer evaluatePageIndex,
				HttpSession session,
				HttpServletRequest request,
				HttpServletResponse response) throws IOException {
		    Course course=this.courseServiceImpl.getCourseById(courseID);
		   
		    Integer sellerID=course.getSellerLogin().getSellerID();
		    SellerInfo sellerInfo=this.courseServiceImpl.selectSellerInfoByID(sellerID);
		    session.setAttribute("sellerInfo",sellerInfo);
			session.setAttribute("courseDetails", course);
			//评价
			List<Evaluate> evaluateList=this.courseServiceImpl.listEvaluateByCourseIDAndRender(courseID,render,evaluatePageIndex);
			session.setAttribute("evaluateList", evaluateList);
			//分页
			int pageCount=this.courseServiceImpl.getEvaluatePageCountByCourseAndRender(courseID,render);	
			int pageIndex=1;	
			 if(0==pageIndex|| pageIndex<0) {
				 session.setAttribute("evaluatePageIndex",1);
				 
			 }else {
				 session.setAttribute("evaluatePageIndex",evaluatePageIndex);
				 	}
			 System.out.print(evaluatePageIndex);
			 System.out.println(pageCount);
			//session.setAttribute("evaluatePageIndex",pageIndex);
			session.setAttribute("evaluatePageCount",pageCount);
			
			
			response.sendRedirect("/Sugarcane/front/courseDetails.jsp");  
		}

	
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
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
		List<PublicCourseType> publicCourseTypeList=this.courseServiceImpl.selectPublicCourseType();
		//分页
		int pageCount=this.courseServiceImpl.getPageCountBySeller(sellerID);
System.out.println(pageCount);
		int pageIndex=1;	
		 if(0==pageIndex|| pageIndex<0) {
			 session.setAttribute("coursePageIndex",1);
			 
		 }else {
			 session.setAttribute("coursePageIndex",coursePageIndex);
			 	}	
		session.setAttribute("publicCourseTypeList", publicCourseTypeList);
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
			//@RequestParam(value="sellerCourseTypeID",defaultValue="0")Integer sellerCourseTypeID,
			//@RequestParam(value="publicTypeID",defaultValue="1")Integer publicTypeID,
		   // @RequestParam("publicCourseType")String publicCourseType,
			HttpServletResponse response,
			HttpServletRequest request,HttpSession session) throws IOException {
		Integer sellerCourseTypeID=Integer.valueOf(request.getParameter("sellerCourseTypeID"));
		Integer publicTypeID=Integer.valueOf(request.getParameter("publicCourseTypeID"));
		List<Course> courseList=this.courseServiceImpl.listAll();
		Integer sellerID=(Integer) session.getAttribute("sellerID");
		SellerLogin sellerLogin=(SellerLogin) session.getAttribute("sellerLogin");
	    PublicCourseType publicCourseType1=this.courseServiceImpl.selectPublicCourseTypeByID(publicTypeID);//publicCourseTypeID
	    SellerCourseType sellerCourseType=this.courseServiceImpl.selectSellerCourseTypeByID(sellerCourseTypeID);
		for(Course course:courseList) {
			if(course.getCourseID() == courseID) {
				course=this.courseServiceImpl.getCourseById(courseID);			
				course.setCourseName(courseName);
				course.setPhoneNumber(phoneNumber);
				course.setPrice(Double.valueOf(price));
				course.setTeacher(teacher);
				course.setPublicCourseType(publicCourseType1);
				course.setSellerLogin(sellerLogin);
				course.setSellerCourseType(sellerCourseType);
				this.courseServiceImpl.updateOneCourse(course);
				break;
			}//if
		}//for
		//response.sendRedirect("Sugarcane/course/listCourse");
		response.sendRedirect("/Sugarcane/organization/manageCourse.jsp");
	
	}
    /**
     * 在培训机构中添加一门课程
     * @param courseName
     * @param price
     * @param video
     * @param phoneNumber
     * @param teacher
     * @param introductionImg1
     * @param sellerCourseTypeID
     * @param publicTypeID
     * @param courseBrief
     * @param response
     * @param request
     * @param session
     * @throws IOException
     */
	@RequestMapping("/addOneCourse")
	public void AddOneCourse(
			@RequestParam("courseName")String courseName,
			@RequestParam("price")double price,
			@RequestParam("video")String video,
			@RequestParam("phoneNumber")String phoneNumber,
			@RequestParam("teacher")String teacher,
			@RequestParam("introductionImg1")String introductionImg1,
			@RequestParam(value="sellerCourseTypeID",defaultValue="1")Integer sellerCourseTypeID,
			@RequestParam(value="publicTypeID",defaultValue="1")Integer publicTypeID,
			@RequestParam("courseBrief")String courseBrief,
//			@RequestParam("introductionImg2")String introductionImg2,
//			@RequestParam("introductionImg3")String introductionImg3,
			HttpServletResponse response,
			HttpServletRequest request,HttpSession session) throws IOException {
	Course newCourse=new Course();	
	SellerCourseType sellerCourseType=this.courseServiceImpl.selectSellerCourseTypeByID(sellerCourseTypeID);
	SellerLogin sellerLogin=(SellerLogin) session.getAttribute("sellerLogin");
    PublicCourseType publicCourseType=this.courseServiceImpl.selectPublicCourseTypeByID(publicTypeID);
	newCourse.setCourseName(courseName);
	newCourse.setPhoneNumber(phoneNumber);
	newCourse.setPrice(price);
	newCourse.setTeacher(teacher);
	newCourse.setIntroductionImg1(introductionImg1);
	newCourse.setVideo(video);
	newCourse.setSellerCourseType(sellerCourseType);
	newCourse.setSellerLogin(sellerLogin);
	newCourse.setPublicCourseType(publicCourseType);
	newCourse.setCourseBrief(courseBrief);
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
