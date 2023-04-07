package com.qst.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbUserAddressInfoDao;
import com.qst.entity.TbUserAddressInfo;

@Repository
public class TbUserAddressInfoDaoImpl extends HibernateDaoSupport implements TbUserAddressInfoDao{
	
	@Resource
	public void setSF(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public void addAddress(TbUserAddressInfo tbUserAddressInfo) {
		getHibernateTemplate().clear();
		getHibernateTemplate().save(tbUserAddressInfo);
		
	}

	@Override
	public List<TbUserAddressInfo> findUserId(int userId) {
		List<TbUserAddressInfo> userAddresss = new ArrayList<TbUserAddressInfo>();
		String hql="from TbUserAddressInfo where userId=? order by addressDefaultAddress asc";
		userAddresss =  getHibernateTemplate().find(hql, userId);
		return userAddresss;
	}

	@Override
	public void delAddress(int addressId) {
		TbUserAddressInfo userAddressInfo = (TbUserAddressInfo) getHibernateTemplate().get(TbUserAddressInfo.class, addressId);
		if(userAddressInfo != null) {
			getHibernateTemplate().clear();
			getHibernateTemplate().delete(userAddressInfo);
		
		}
	}

	@Override
	public void updateAddress(TbUserAddressInfo tbUserAddressInfo) {
		getHibernateTemplate().clear();
		getHibernateTemplate().update(tbUserAddressInfo);
	}

	@Override
	public TbUserAddressInfo findAddressByAddressId(int addressId) {
		String hql="from TbUserAddressInfo where addressId=?";
		TbUserAddressInfo tbUserAddressInfo = (TbUserAddressInfo) getHibernateTemplate().get(TbUserAddressInfo.class, addressId);
		return tbUserAddressInfo;
	}
	
	public TbUserAddressInfo findAddressDefault() {
		String hql="from TbUserAddressInfo where addressDefaultAddress=0";
		List<TbUserAddressInfo> tbUserAddressInfo = (List<TbUserAddressInfo>) getHibernateTemplate().find(hql);
		return tbUserAddressInfo.get(0);
	}
	
	
	public void updateDefault(final int addressId, final int status) {
		getHibernateTemplate().clear();
		final String hql = "update TbUserAddressInfo set addressDefaultAddress =? where addressId =?";
		
		getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(org.hibernate.Session arg0)
					throws HibernateException, SQLException {
				Query query = arg0.createQuery(hql);
				query.setInteger(0, status);
				query.setInteger(1, addressId);
				query.executeUpdate();
				//arg0.beginTransaction().commit();
				//arg0.close();
				return null;
			}
		});
	}

}
