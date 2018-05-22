package com.one.sugarcane.userinfo.service;

import java.util.Set;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.one.sugarcane.userinfo.dao.UserInfoDaoImpl;
import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.UserHobby;
import com.one.sugarcane.entity.UserInfo;

/**
 * 
 * @author ������
 * @throws IOException 
 * @date 2018/5/10
 */

@Service
@Transactional(readOnly=false)
public class UserInfoServiceImpl {
	@Resource
	private UserInfoDaoImpl userInfoDaoImpl;
	
	/**
	 * �û�ע��
	 * @author ������
	 * @date 2018/5/10
	 */
	public void saveUserInfo(UserInfo userInfo) {
		userInfoDaoImpl.saveUserInfo(userInfo);
	}
	
	/**
	 * �����û���Ϣ
	 * @author �뺣��
	 * @date 2018.5.17
	 */
	public void updateUserInfo(UserInfo userInfo) {
		this.userInfoDaoImpl.updateUserInfo(userInfo);
		
	}
	/**
	 * 插入userHobby
	 */
	public UserHobby saveUserHobby(UserInfo userInfo,PublicCourseType publicType) {
		UserHobby userHobby = this.userInfoDaoImpl.saveUserHobby(userInfo, publicType);
		return userHobby;
	}
	/**
	 * 通过publicTypeName查找publicCourseType
	 * @author 冯海晴
	 * @return
	 */
	public PublicCourseType findPublicType(String publicTypeName) {
		return this.userInfoDaoImpl.findPublicType(publicTypeName);
	}
}
