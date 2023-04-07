package com.qst.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbGoodsImageInfoDao;

@Repository
public class TbGoodsImageInfoDaoImpl extends HibernateDaoSupport implements  TbGoodsImageInfoDao{

	
	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public String findImagePath(int goodsImageId) {
		Object[] obj = new Object[1];
		obj[0] = goodsImageId;

		String hql = "select goodsImagePath from TbGoodsImageInfo where goodsImageId = ?";
		List<String> u = new ArrayList<String>();
		u = (List<String>)getHibernateTemplate().find(hql, obj);
		return u.get(0);
	}

}
