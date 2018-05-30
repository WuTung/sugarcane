package com.one.sugarcane.search.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 根据索引搜索培训机构 并且高亮显示 TODO
 * 
 * @author 秦晓宇
 * @date 2018年5月29日
 * 
 */
@Service
@Transactional(readOnly = false)
public class SellerInfoSearchService {
	public static String pt;
	
	private SellerInfoSearch sellerInfoSearch = new SellerInfoSearch() ;

	public ArrayList<String[]> searchBySellerName(String name) throws Exception {
		pt = "E:\\gitRepository\\sugarcane\\sugarcane\\src\\com\\one\\sugarcane\\search\\dataIndex\\courseIndex";
		return sellerInfoSearch.search(pt, name);
	}
}
