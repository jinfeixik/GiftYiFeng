package com.qst.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbGoodsDetailInfoDao;
import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;

/**
 * @author 袁滢yuanying
 * @date 2019-8-6下午8:21:05
 * @version v1.0 针对数据库表的商品的添加，删除，上架，下架，修改
 */
@Repository
public class TbGoodsDetailInfoDaoImpl extends HibernateDaoSupport implements
		TbGoodsDetailInfoDao {

	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.qst.dao.TbGoodsDetailInfoDao#addTbGoodsDetailInfo(com.qst.entity.
	 * TbGoodsDetailInfo)添加商品
	 */
	@Override
	public void addTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
	//	System.out.println("添加商品dao。。。" +tbGoodsDetailInfo.toString());
		if(tbGoodsDetailInfo.getGoodsName() != null) {
			getHibernateTemplate().clear();
			getHibernateTemplate().saveOrUpdate(tbGoodsDetailInfo);
		}
	}

	@Override
	public void statusGoods(final int status, final int goodsId) {
		System.out.println("状态" +status + "   id = " +goodsId);
		final String hql = "update TbGoodsDetailInfo set goodsStatus = ? where goodsId = ?";
		getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session arg0) throws HibernateException,
					SQLException {
				Query query = arg0.createQuery(hql);
				
				query.setInteger(0, status);
				query.setInteger(1, goodsId);
				
				query.executeUpdate();
				arg0.beginTransaction().commit();
				return null;
			}
		});

	}

	@Override
	public List<TbGoodsDetailInfo> findTbGoodsDetailInfos(String hql) {
		List<TbGoodsDetailInfo> tbGoodsDetailInfos = getHibernateTemplate().find(hql);
		return tbGoodsDetailInfos;
	}

	@Override
	public List<TbGoodsDetailInfo> findTbGoodsDetailInfos(String hql,
			int[] goodIds) {
		List<TbGoodsDetailInfo> tbGoodsDetailInfos = getHibernateTemplate().find(hql, goodIds);
		return tbGoodsDetailInfos;
	}

	@Override
	public void deleteTbGoodsDetailInfo(int goodsId) {
		System.out.println(goodsId +"是商品地址");
		TbGoodsDetailInfo info = (TbGoodsDetailInfo) getHibernateTemplate().get(TbGoodsDetailInfo.class, goodsId);
		if(info != null) {
		//	getHibernateTemplate().clear();
			getHibernateTemplate().delete(info);
		}
		System.out.println(info==null);
	}

	@Override
	public TbGoodsDetailInfo findTbGoodsDetailInfo(int goodsId) {
		TbGoodsDetailInfo tbGoodsDetailInfo = (TbGoodsDetailInfo)getHibernateTemplate().get(TbGoodsDetailInfo.class, goodsId);
		return tbGoodsDetailInfo;
	}

	@Override
	public void updateTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
	
		getHibernateTemplate().clear();
		System.out.println("修改信息" +tbGoodsDetailInfo.toString());
		getHibernateTemplate().update(tbGoodsDetailInfo);
		
		
	}
	
	@Override
	public void updateTbGoodsDetailInfo2(TbGoodsDetailInfo tbGoodsDetailInfo) {
			getHibernateTemplate().update(tbGoodsDetailInfo);
		
	}
	
	

	
}
