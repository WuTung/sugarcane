package com.one.sugarcane.userlogin.dao;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.UserLogin;
import com.one.sugarcane.entity.UserLoginLog;

/**
 * 
 * @author 张梦洲
 * @throws IOException
 * @date 2018/5/10
 */
@Repository
public class UserLoginDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * 根据邮箱查找登录
	 * 
	 * @param email
	 * @return
	 */
	public UserLogin findByEmail(String email) {
		Query query = this.sessionFactory.getCurrentSession()
				.createQuery("from UserLogin where userEmail='" + email + "'");
		return (UserLogin) query.uniqueResult();
	}

	/**
	 * 更新登录日志
	 * 
	 * @param sellerLoginLog
	 */
	public void updateUserLogin(UserLoginLog userLoginLog) {
		this.sessionFactory.getCurrentSession().save(userLoginLog);
		this.sessionFactory.getCurrentSession().save(userLoginLog.getUserLogin());
	}

	/**
	 * 查看查看日志，用户登录次数
	 * 
	 * @author 冯海晴
	 */
	public int findLogCount(UserLogin userLogin) {
		String hql = "select count(u.ID) as number from UserLoginLog u where u.userLogin = ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql).setParameter(0, userLogin);
		int logCount = ((Number) query.iterate().next()).intValue();
		return logCount;
	}

}