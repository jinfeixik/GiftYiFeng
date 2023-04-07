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
import com.qst.dao.TbGoodsStyleInfoDao;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.sun.istack.internal.FinalArrayList;


@Repository
public class TbGoodsStyleInfoDaoImpl extends HibernateDaoSupport implements TbGoodsStyleInfoDao {
	@Resource
	public void setSF(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	
	public void addGoods(TbGoodsStyleInfo tbGoodsStyleInfo) {
		System.out.println("添加样式" +tbGoodsStyleInfo.toString());
		getHibernateTemplate().save(tbGoodsStyleInfo);
		
		
	}

	@Override
	public TbGoodsStyleInfo findGoodsStyle(int goodsStyleId){
		TbGoodsStyleInfo tbGoodsStyleInfos =  (TbGoodsStyleInfo) getHibernateTemplate().get(TbGoodsStyleInfo.class,goodsStyleId);
		System.out.println("商品名称"+tbGoodsStyleInfos.getTbGoodsDetailInfo().getGoodsName());
		return tbGoodsStyleInfos;
		}


	@Override
	public int findImageIdStyle(Integer goodsStyleId) {
		Object[] obj = new Object[1];
		obj[0] = goodsStyleId;
		String hql = "select goodsImageId from TbGoodsStyleInfo where goodsStyleId = ?";
	
		List<Integer> u = new ArrayList<Integer>();
		u = getHibernateTemplate().find(hql, obj);
		return u.get(0);
		
	}

	@Override
	public List<TbGoodsStyleInfo> findGoodStyleInfo(String hql,int goodsId) {
		// TODO Auto-generated method stub
		List<TbGoodsStyleInfo> tbGoodsStyleInfos=getHibernateTemplate().find(hql);
		return tbGoodsStyleInfos;
	}

	@Override
	public int findGoodsIdStyle(Integer goodsStyleId) {
		Object[] obj = new Object[1];
		obj[0] = goodsStyleId;
		String hql = "select goodsId from TbGoodsStyleInfo where goodsStyleId = ?";
	
		List<Integer> u = new ArrayList<Integer>();
		u = getHibernateTemplate().find(hql, obj);
		return u.get(0);
		
	}



	@Override
	public List<TbGoodsImageInfo> findGoodsImageInfo(String hql,
			int goodsImageId) {
		// TODO Auto-generated method stub
		List<TbGoodsImageInfo> tbGoodsImageInfos=getHibernateTemplate().find(hql);
		return tbGoodsImageInfos;
	}
	
	@Override
	public TbGoodsStyleInfo findStyle(int styleId) {
		TbGoodsStyleInfo style = (TbGoodsStyleInfo) getHibernateTemplate().get(TbGoodsStyleInfo.class, styleId);
		return style;
	}
	
	
	@Override
	public void addStyle(TbGoodsStyleInfo tbGoodsStyleInfo) {
		getHibernateTemplate().clear();
		System.out.println("添加样式" +tbGoodsStyleInfo.toString());
		getHibernateTemplate().saveOrUpdate(tbGoodsStyleInfo);
		
		
	}

	@Override
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
	public TbGoodsStyleInfo findGoodsStyleInfoService(int goodStyleId) {
		Object[] obj = new Object[1];
		obj[0] = goodStyleId;
		String hql = "from TbGoodsStyleInfo where goodsStyleId = ?";
	
		List<TbGoodsStyleInfo> u = new ArrayList<TbGoodsStyleInfo>();
		u = getHibernateTemplate().find(hql, obj);
		return u.get(0);
	}

	@Override
	public void updateStock(final TbGoodsStyleInfo tbGoodsStyleInfo) {
		final String hql = "update TbGoodsStyleInfo set goodsStyleStock=? where goodsStyleId = ?";
		
	       
		getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session arg0) throws HibernateException,
					SQLException {
				Query query = arg0.createQuery(hql);
				query.setInteger(0, tbGoodsStyleInfo.getGoodsStyleStock());
				query.setInteger(1, tbGoodsStyleInfo.getGoodsStyleId());
				query.executeUpdate();
				arg0.beginTransaction().commit();
				return null;
			}
		})	;
		
	}

}
