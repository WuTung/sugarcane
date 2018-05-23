/**
 * @author 鍐捣鏅�
 * @date 2018.5.17
 */
package com.one.sugarcane.publiccoursetype.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.publiccoursetype.service.PublicCourseTypeServiceImpl;

@Controller
@RequestMapping("publicType")
public class PublicCourseTypeController {
	@Resource
	private PublicCourseTypeServiceImpl publicCourseTypeServiceImpl;

	/**
	 * 鏌ヨ鎵�鏈夊叕鍏辫绋嬪垎绫�
	 * 
	 * @throws IOException
	 * 
	 */
	@RequestMapping("/listall")
	public void findAllPublicType(HttpSession session, HttpServletResponse response) throws IOException {
		List<PublicCourseType> publicTypes = this.publicCourseTypeServiceImpl.findAllPublicType();
		session.setAttribute("publicTypes", publicTypes);
		response.sendRedirect("/Sugarcane/front/complete.jsp");
	}

}
