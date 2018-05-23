/**
 * @author 鍐捣鏅�
 * @date 2018.5.17
 */
package com.one.sugarcane.publiccoursetype.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import com.one.sugarcane.entity.PublicCourseType;

@Repository
public class PublicCourseTypeDaoImpl {

	@Resource
	private SessionFactory sessionFactory;

	/**
	 * 鏌ヨ鎵�鏈夊叕鍏辫绋嬪垎绫�
	 */
	public List<PublicCourseType> findAllPublicType() {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from PublicCourseType where hidden=0");
		return query.list();
	}

}
