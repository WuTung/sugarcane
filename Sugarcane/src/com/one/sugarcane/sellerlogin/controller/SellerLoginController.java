package com.one.sugarcane.sellerlogin.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.one.sugarcane.sellerlogin.service.SellerLoginServiceImpl;
import com.one.sugarcane.entity.SellerLogin;

@Controller
@RequestMapping("sellerLogin")
public class SellerLoginController {
	@Resource
	private SellerLoginServiceImpl sellerLoginServiceImpl;
}
