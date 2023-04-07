package com.qst.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.AnalysisDataDao;
import com.qst.entity.TbUserAddressInfo;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
/**
 * 
 * @author 李阳liyang
 * @date 2019-8-12下午5:48:53
 * @version v1.0
 */
@Repository
public class AnalysisDataDaoImpl  extends HibernateDaoSupport implements AnalysisDataDao{
	
	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public List<TbUserInfo> findUserAll(String hql) {
		// TODO Auto-generated method stub
		List<TbUserInfo> tbUserInfos=getHibernateTemplate().find(hql);
		return tbUserInfos;
		
	}

	@Override
	public List<TbUserAddressInfo> findUserAddress(String hql) {
		// TODO Auto-generated method stub
		List<TbUserAddressInfo> tbUserAddressInfos=getHibernateTemplate().find(hql);
		return tbUserAddressInfos;
	}

}
