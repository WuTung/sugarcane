package com.one.sugarcane.sellerloginlog.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.one.sugarcane.sellerloginlog.service.SellerLoginLogServiceImpl;
import com.one.sugarcane.entity.SellerLoginLog;

@Controller
@RequestMapping("seller")
public class SellerLoginController {
	@Resource
	private SellerLoginLogServiceImpl sellerLoginLogServiceImpl;
}
