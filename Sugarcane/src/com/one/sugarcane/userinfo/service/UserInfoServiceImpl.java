package com.one.sugarcane.userinfo.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.one.sugarcane.userinfo.dao.UserInfoDaoImpl;
import com.one.sugarcane.entity.UserInfo;

/**
 * 
 * @author 张梦洲
 * @throws IOException 
 * @date 2018/5/10
 */

@Service
@Transactional(readOnly=false)
public class UserInfoServiceImpl {
	@Resource
	private UserInfoDaoImpl userInfoDaoImpl;
	
	/**
	 * 用户注册
	 * @author 张梦洲
	 * @date 2018/5/10
	 */
	public void saveUserInfo(UserInfo userInfo) {
		userInfoDaoImpl.saveUserInfo(userInfo);
	}
}
