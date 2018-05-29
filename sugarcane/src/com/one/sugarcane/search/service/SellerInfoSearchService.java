package com.one.sugarcane.search.service;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 根据索引搜索培训机构 并且高亮显示 TODO
 * 
 * @author 秦晓宇
 * @date 2018年5月15日
 * 
 */
@Service
@Transactional(readOnly = false)
public class SellerInfoSearchService {
	public static String pt;
	static {
		File directory = new File("");
		String courseFile;
		try {
			courseFile = directory.getCanonicalPath();
			pt = courseFile + "\\src\\com\\one\\sugarcane\\search\\dataIndex\\";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	private SellerInfoSearch sellerInfoSearch;
	public String [] searchBySellerName(String name) throws Exception {
		return sellerInfoSearch.search(pt, name);
	}
}
