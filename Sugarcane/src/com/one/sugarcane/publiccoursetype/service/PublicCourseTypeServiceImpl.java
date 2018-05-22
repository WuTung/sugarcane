/**
 * @author 鍐捣鏅�
 * @date 2018.5.17
 */
package com.one.sugarcane.publiccoursetype.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.publiccoursetype.dao.PublicCourseTypeDaoImpl;

@Service
public class PublicCourseTypeServiceImpl {
	@Resource
	private PublicCourseTypeDaoImpl publicCourseTypeDaoImpl;
	
	/**
	 * 鏌ヨ鎵�鏈夊叕鍏辫绋嬪垎绫�
	 */
	public List<PublicCourseType> findAllPublicType(){
		return this.publicCourseTypeDaoImpl.findAllPublicType();
	}

}
