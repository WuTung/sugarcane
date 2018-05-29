package com.one.sugarcane.search.service;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
/**
 * 根据索引搜索课程 并且高亮显示 TODO
 * 
 * @author 秦晓宇
 * @date 2018年5月15日
 * 
 */
@Service
@Transactional(readOnly=false)
public class CourseSearchService {
	public static String pt;
	static {
		File directory = new File("");
		String courseFile;
		try {
			courseFile = directory.getCanonicalPath();
			pt = courseFile + "\\src\\com\\one\\sugarcane\\search\\dataIndex" ;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private CourseSearch courseSearch = new CourseSearch();
	
//	public String [] searchByCourseName(String name) throws Exception {
//		return this.courseSearch.search(pt, name);
//	}
	public static void main(String[] args) {
		String b[] = new String[3];
		try {
			
			b = new CourseSearchService().courseSearch.search(pt, "书法");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (String string : b) {
			System.out.println(string);
		}
	}
}
