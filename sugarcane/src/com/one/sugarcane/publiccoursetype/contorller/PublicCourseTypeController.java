package com.one.sugarcane.publiccoursetype.contorller;
/**
 * 公共课程类别
 * @author 冯海晴
 * @date 2018.5.24
 */

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.UserInfo;
import com.one.sugarcane.publiccoursetype.service.PublicCourseTypeServiceImpl;

@Controller
@RequestMapping("/publicCourseType")
public class PublicCourseTypeController {
	@Resource
	private PublicCourseTypeServiceImpl publicCourseTypeServiceImpl;
	/**
	 * 查询
	 * @author 冯海晴
	 * @throws IOException 
	 * @date 2018.5.24
	 */
	@RequestMapping("/list")
	public void listAll(HttpServletRequest request, HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		List<PublicCourseType> listPublicType = this.publicCourseTypeServiceImpl.listAll();
		session.setAttribute("listPublicType", listPublicType);
		response.sendRedirect("/Sugarcane/front/complete.jsp");
	}
	/**
	 * 查询1
	 * @author 冯海晴
	 * @throws IOException 
	 * @date 2018.5.28
	 */
	@RequestMapping("/list1")
	public void listAll1(HttpServletRequest request, HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		List<PublicCourseType> listPublicTypeP = this.publicCourseTypeServiceImpl.listAll();
		session.setAttribute("listPublicTypeP", listPublicTypeP);
		UserInfo userInfo = (UserInfo) session.getAttribute("user");
		//头像显示
		String imgName = userInfo.getUserPicture();
		if(imgName != null) {
			System.out.println("图片名："+imgName);
			session.setAttribute("userPicture", imgName);
		}
		String birthday = userInfo.getBirthday();
		String[] bir = birthday.split(",");
		session.setAttribute("bir", bir);
		String checkboxs = this.publicCourseTypeServiceImpl.listHobby(userInfo);
		session.setAttribute("checkboxs", checkboxs);
		response.sendRedirect("/Sugarcane/front/personinfor.jsp");
	}
}
