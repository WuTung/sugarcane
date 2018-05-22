package com.one.sugarcane.userinfo.dao;

import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.one.sugarcane.entity.PublicCourseType;
import com.one.sugarcane.entity.UserHobby;
import com.one.sugarcane.entity.UserInfo;

/**
 * 
 * @author ������
 * @throws IOException 
 * @date 2018/5/10
 */
@Repository
public class UserInfoDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * ��ѵ����ע��
	 * @author ������
	 * @date 2018/4/30
	 */
	public void saveUserInfo(UserInfo userInfo) {
		this.sessionFactory.getCurrentSession().save(userInfo);
		this.sessionFactory.getCurrentSession().save(userInfo.getUserLogin());
	}
	
	/**
	 * ����/���Ƹ�����Ϣ
	 * @author �뺣��
	 * @date 2018.5.17
	 */
	public void updateUserInfo(UserInfo userInfo) {
		this.sessionFactory.getCurrentSession().update(userInfo);
	}
	
	/**
	 * 插入userHobby
	 */
	public UserHobby saveUserHobby(UserInfo userInfo,PublicCourseType publicType) {
		UserHobby userHobby = new UserHobby();
		userHobby.setUserInfo(userInfo);
		userHobby.setPublicType(publicType);
		this.sessionFactory.getCurrentSession().save(userHobby);
		return userHobby;
	}
	/**
	 * 通过publicTypeName查找publicCourseType
	 * @author 冯海晴
	 * @return
	 */
	public PublicCourseType findPublicType(String publicTypeName) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from PublicCourseType p where p.publicTypeName = ?");
		query.setParameter(0, publicTypeName);
		List<PublicCourseType> publicTypes = query.list();
		PublicCourseType publicType = publicTypes.get(0);
		return publicType;
	}
}
