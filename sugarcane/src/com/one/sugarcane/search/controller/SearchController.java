package com.one.sugarcane.search.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.one.sugarcane.entity.Searcher;
import com.one.sugarcane.search.service.CourseSearchService;
import com.one.sugarcane.search.service.SellerInfoSearchService;

@Controller
@RequestMapping("search")
public class SearchController {
	public ArrayList<Searcher> list = new ArrayList<Searcher>();
	@Resource
	private CourseSearchService courseSearchService;
	@Resource
	private SellerInfoSearchService SellerInfoSearchService;

	@RequestMapping("/searchByCourse")
	public void searchByCourse(@RequestParam("searchName") String name, HttpServletResponse response,
			HttpSession sessione) throws Exception {
		list = this.courseSearchService.searchByCourseName(name);
//		for (String[] strings : list) {
//			System.out.println(strings[0]);
//			System.out.println(strings[1]);
//			System.out.println(strings[2]);
//		}
		sessione.setAttribute("courseSearcher", list);
		response.sendRedirect("/Sugarcane/front/searchResult.jsp");
	}

	@RequestMapping("/searchBySeller")
	public void serachBySeller(@RequestParam("searchName") String name, HttpServletResponse response,
			HttpSession sessione) throws Exception {
		list = this.SellerInfoSearchService.searchBySellerName(name);
		sessione.setAttribute("sellerSearcher", list);
		response.sendRedirect("/Sugarcane/front/searchResult.jsp");
	}
}
