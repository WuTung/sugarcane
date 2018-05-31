package com.one.sugarcane.userinfo.dao;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.UserInfo;

/**
 * 
 * @author 张梦洲
 * @throws IOException 
 * @date 2018/5/10
 */
@Repository
public class UserInfoDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * 培训机构注册
	 * @author 张梦洲
	 * @date 2018/4/30
	 */
	public void saveUserInfo(UserInfo userInfo) {
		this.sessionFactory.getCurrentSession().save(userInfo);
		this.sessionFactory.getCurrentSession().save(userInfo.getUserLogin());
	}
}
