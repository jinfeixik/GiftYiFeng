package com.qst.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbStyleDao;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.sun.org.apache.bcel.internal.generic.RETURN;
/**
 * 
 * @author 李阳liyang
 * @date 2019-8-13下午5:50:44
 * @version v1.0
 * 废品
 */
@Repository
public class TbStyleDaoImpl extends HibernateDaoSupport implements TbStyleDao{
	
	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	public TbGoodsStyleInfo findStyle(int styleId) {
		TbGoodsStyleInfo style = (TbGoodsStyleInfo) getHibernateTemplate().get(TbGoodsStyleInfo.class, styleId);
		return style;
	}
	
	public void addStyle(TbGoodsStyleInfo tbGoodsStyleInfo) {
		getHibernateTemplate().clear();
		System.out.println("添加样式" +tbGoodsStyleInfo.toString());
		getHibernateTemplate().saveOrUpdate(tbGoodsStyleInfo);
		
		
	}

	
	public void deleteStyle(int id) {
		System.out.println("进入删除样式");
		TbGoodsStyleInfo tbGoodsStyleInfo = (TbGoodsStyleInfo)getHibernateTemplate().get(TbGoodsStyleInfo.class, id);
		if(tbGoodsStyleInfo != null) {
			getHibernateTemplate().clear();
			getHibernateTemplate().delete(tbGoodsStyleInfo);
		
		}
		System.out.println("删除样式成功");
		
	}

	@Override
	public void updateStyle(TbGoodsStyleInfo tbGoodsStyleInfo) {
		getHibernateTemplate().clear();
		System.out.println("修改样式 " +tbGoodsStyleInfo.toString());
		getHibernateTemplate().update(tbGoodsStyleInfo);
	}

	@Override
	public TbGoodsImageInfo findImageInfo(int imageId) {
	
		TbGoodsImageInfo image = (TbGoodsImageInfo)getHibernateTemplate().get(TbGoodsImageInfo.class, imageId);
		return image;
	}

}
