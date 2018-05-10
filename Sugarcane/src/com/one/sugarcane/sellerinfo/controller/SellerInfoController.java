package com.one.sugarcane.sellerinfo.controller;

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

import com.one.sugarcane.sellerinfo.service.SellerInfoServiceImpl;
import com.one.sugarcane.entity.SellerInfo;
import com.one.sugarcane.entity.SellerLogin;
import com.one.sugarcane.MD5Util.MD5Util;;

@Controller
@RequestMapping("sellerInfo")
public class SellerInfoController {
	@Resource
	private SellerInfoServiceImpl sellerInfoServiceImpl;
	
	/**
	 * 培训机构注册
	 * @author 张梦洲，狗晟儿，傻崔
	 * @throws IOException 
	 * @date 2018/4/30
	 */
	@RequestMapping("/save")
	public String save(HttpServletRequest request,@RequestParam String name,@RequestParam String mail,@RequestParam String password,
			@RequestParam String phone,@RequestParam String cmbProvince,@RequestParam String cmbCity,@RequestParam String cmbArea,
			@RequestParam(required=false) String brief,@RequestParam MultipartFile educationBureauApproved,@RequestParam MultipartFile proofOfHouse,
			@RequestParam MultipartFile fireSafetyCertificate,@RequestParam MultipartFile businessLisense) throws IOException {
		SellerInfo sellerInfo = new SellerInfo();
		SellerLogin sellerLogin = new SellerLogin();
		sellerInfo.setSellerName(name);
		sellerInfo.setSellerEmail(mail);
		sellerInfo.setSellerPhoneNumber(phone);
		sellerInfo.setAddress_province(cmbProvince);
		sellerInfo.setAddress_city(cmbCity);
		sellerInfo.setAddress_area(cmbArea);
		sellerInfo.setBrief(brief);
		//存储证书
		ServletContext context = request.getServletContext();
		String realPath = context.getRealPath("/static/images");
		if (educationBureauApproved != null) {
			String filename = educationBureauApproved.getOriginalFilename();
			String suffix = filename.substring(filename.lastIndexOf("."));
			filename = name + "eba" + suffix;
			File file = new File(realPath + "/" + filename);
			sellerInfo.setEducationBureauApproved(filename);
			byte[] bytes = educationBureauApproved.getBytes();
			FileOutputStream fos = new FileOutputStream(file);
			fos.write(bytes);
			fos.flush();
			fos.close();
		}
		if (proofOfHouse != null) {
			String filename = proofOfHouse.getOriginalFilename();
			String suffix = filename.substring(filename.lastIndexOf("."));
			filename = name + "poh" + suffix;
			File file = new File(realPath + "/" + filename);
			sellerInfo.setProofOfHouse(filename);
			byte[] bytes = proofOfHouse.getBytes();
			FileOutputStream fos = new FileOutputStream(file);
			fos.write(bytes);
			fos.flush();
			fos.close();
		}
		if (fireSafetyCertificate != null) {
			String filename = fireSafetyCertificate.getOriginalFilename();
			String suffix = filename.substring(filename.lastIndexOf("."));
			filename = name + "fsc" + suffix;
			File file = new File(realPath + "/" + filename);
			sellerInfo.setFireSafetyCertificate(filename);
			byte[] bytes = fireSafetyCertificate.getBytes();
			FileOutputStream fos = new FileOutputStream(file);
			fos.write(bytes);
			fos.flush();
			fos.close();
		}
		if (businessLisense != null) {
			String filename = businessLisense.getOriginalFilename();
			String suffix = filename.substring(filename.lastIndexOf("."));
			filename = name + "bl" + suffix;
			File file = new File(realPath + "/" + filename);
			sellerInfo.setBusinessLisense(filename);
			byte[] bytes = businessLisense.getBytes();
			FileOutputStream fos = new FileOutputStream(file);
			fos.write(bytes);
			fos.flush();
			fos.close();
		}
		sellerLogin.setSellerInfo(sellerInfo);
		MD5Util md5 = new MD5Util();
		String md5PWD = md5.generate(password);
		sellerLogin.setPassword(md5PWD);
		sellerLogin.setSellerLoginName(name);
		sellerInfo.setSellerLogin(sellerLogin);
		sellerInfoServiceImpl.saveSellerInfo(sellerInfo);
		return "organization/orgLogin";
	}


@RequestMapping("/pass")
public String pass(@RequestParam String name,@RequestParam String email) {
	
	SellerInfo sellerinfo = this.sellerInfoServiceImpl.getpass(name,email);
	
	String phone = sellerinfo.getSellerPhoneNumber();
	
	if(phone != null) {
			return "organization/dopass";
	}else {
			return "organization/passfail";
	}
	
	}

@RequestMapping("/successpass")
public String dopass() {
	
	return "organization/orgLogin";
	
	}

@RequestMapping("/failpass")
public String undopass() {
	
	return "organization/orgLogin";
	
	}

@RequestMapping("/updatebrief")
public String upbrief(@RequestParam String brief,HttpServletRequest request) throws IOException{
	
	
		
		SellerInfo sellerinfo =(SellerInfo) request.getSession(true).getAttribute("seller");

		System.out.println(brief);
		
		sellerinfo.setBrief(brief);

		sellerInfoServiceImpl.updateSellerInfo(sellerinfo);
	
	
		return "organization/manageClassify";
	
	}
	
	
	
	


}




