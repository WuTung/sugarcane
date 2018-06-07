package com.one.sugarcane.userinfo.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.one.sugarcane.userinfo.service.UserInfoServiceImpl;
import com.one.sugarcane.entity.UserInfo;
import com.one.sugarcane.entity.UserLogin;
import com.one.sugarcane.MD5Util.MD5Util;;

/**
 * 
 * @author 张梦洲
 * @throws IOException 
 * @date 2018/4/30
 */

@Controller
@RequestMapping("userInfo")
public class UserInfoController {
	@Resource
	private UserInfoServiceImpl userInfoServiceImpl;
	
	/**
	 * 用户注册
	 * @author 张梦洲
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
}