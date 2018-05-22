package com.one.sugarcane.userinfo.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.one.sugarcane.userinfo.service.UserInfoServiceImpl;
import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.UserHobby;
import com.one.sugarcane.entity.UserInfo;
import com.one.sugarcane.entity.UserLogin;
import com.one.sugarcane.MD5Util.MD5Util;;

/**
 * 
 * @author 寮犳ⅵ娲�
 * @throws IOException 
 * @date 2018/4/30
 */

@Controller
@RequestMapping("userInfo")
public class UserInfoController {
	@Resource
	private UserInfoServiceImpl userInfoServiceImpl;
	
	/**
	 * 鐢ㄦ埛娉ㄥ唽
	 * @author 寮犳ⅵ娲�
	 * @throws IOException 
	 * @date 2018/5/10
	 */
	@RequestMapping("/save")
	public String save(@RequestParam String username,@RequestParam String email,@RequestParam String password,@RequestParam String phone) {
		UserInfo userInfo = new UserInfo();
		UserLogin userLogin = new UserLogin();
		userInfo.setUserName(username);
		userInfo.setUserEmail(email);
		userInfo.setUserPhoneNumber(phone);
		userLogin.setUserInfo(userInfo);
		MD5Util md5 = new MD5Util();
		String md5PWD = md5.generate(password);
		userLogin.setPassword(md5PWD);
		userLogin.setUserEmail(email);
		userInfo.setUserLogin(userLogin);
		userInfoServiceImpl.saveUserInfo(userInfo);
		return "front/home";
	}
	
	/**
	 * 完善个人信息
	 * @author 冯海晴
	 * @throws IOException 
	 * @date 2018.5.17
	 */
	@RequestMapping("/update")
	public void updateUserInfo(HttpServletRequest request, HttpServletResponse response,@RequestParam int userGender, @RequestParam String birthday, 
			@RequestParam String userEducation,@RequestParam String userWork, @RequestParam String address_province,
			@RequestParam String address_city, @RequestParam String address_area, @RequestParam String publicTypeNames) throws IOException {
		System.out.println(userGender+birthday+userEducation+userWork+address_province+address_city+address_area+publicTypeNames);
		UserInfo userInfo = (UserInfo)request.getSession().getAttribute("user");
		Set<UserHobby> userHobbies = new HashSet<UserHobby>();
		String[] p=publicTypeNames.split(",");
		for(int i=0; i<p.length; i++) {
			String publicTypeName = p[i];
			System.out.println(publicTypeName);
			PublicCourseType publicType = this.userInfoServiceImpl.findPublicType(publicTypeName);
			UserHobby userHobby = this.userInfoServiceImpl.saveUserHobby(userInfo, publicType);
			userHobbies.add(userHobby);
		}
		System.out.println("开始");
		userInfo.setUserGender(userGender);
		userInfo.setBirthday(birthday);
		userInfo.setUserEducation(userEducation);
		userInfo.setUserWork(userWork);
		userInfo.setAddress_province(address_province);
		userInfo.setAddress_city(address_city);
		userInfo.setAddress_area(address_area);
		userInfo.setUserHobby(userHobbies);
		this.userInfoServiceImpl.updateUserInfo(userInfo);
		System.out.println("结束");
		response.sendRedirect("/Sugarcane/front/home.jsp");
	}
}