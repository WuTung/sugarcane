package com.one.sugarcane.userlogin.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.one.sugarcane.userlogin.service.UserLoginServiceImpl;
import com.one.sugarcane.entity.UserLogin;
import com.one.sugarcane.entity.UserLoginLog;

/**
 * 培训机构登录
 * @author 张梦洲
 * @throws IOException 
 * @date 2018/5/10
 */
@Controller
@RequestMapping("userLogin")
public class UserLoginController {
	@Resource
	private UserLoginServiceImpl userLoginServiceImpl;
	
	/**
	 * user登录
	 * @param email
	 * @param password
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "login")
	public String login(@RequestParam String email,@RequestParam String password,
			Model model,HttpServletRequest request,HttpSession session)throws IOException{
		UserLogin userLogin = this.userLoginServiceImpl.Login(email,password);
		session.setAttribute("userId", userLogin.getUserID());
		if(null!=userLogin){
			UserLoginLog userLoginlog = new UserLoginLog();
			//获取ip
			String ip = request.getHeader("x-forwarded-for"); 
		       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		           ip = request.getHeader("Proxy-Client-IP"); 
		       } 
		       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		           ip = request.getHeader("WL-Proxy-Client-IP"); 
		       } 
		       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		           ip = request.getRemoteAddr(); 
		       } 
		     //获取时间
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String date = df.format(new Date());
			userLoginlog.setIP(ip);
			userLoginlog.setTime(date);
			userLogin.setLastTime(date);
			userLogin.setLastIP(ip);
			userLoginlog.setUserLogin(userLogin);
			this.userLoginServiceImpl.updateUserLogin(userLoginlog);
			request.getSession().setAttribute("user", userLogin.getUserInfo());
			return "front/index";
		}else{
			model.addAttribute("information", "邮箱或密码错误");
			return "front/index";
		
		}
	}
	
}
