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

import com.qst.dao.TbUserInfoDao;
import com.qst.entity.TbUserInfo;
import com.qst.util.DESSecretUtil;

/**
 * @author 袁滢yuanying
 * @date 2019-8-5下午7:54:01
 * @version v1.0
 */
/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-6下午8:48:32
 * @version v1.0
 */
@Repository
public class TbUserInfoDaoImpl extends HibernateDaoSupport implements TbUserInfoDao{

	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	
	/* (non-Javadoc)
	 * @see com.qst.dao.TbUserInfoDao#addTbUserInfo(com.qst.entity.TbUserInfo)
	 */
	@Override
	public void addTbUserInfo(TbUserInfo userinfo) {
		
		getHibernateTemplate().save(userinfo);
		System.out.println("添加用户记录");
		
	}


	@Override
	public TbUserInfo findLoginTbUserInfo(String info, String password) throws Exception {
		Object[] obj = new Object[4];
		obj[0] = info;
		obj[1] = info;
		obj[2] = info;
		password=DESSecretUtil.encryption(password);
		obj[3] = password;
		String hql = " from TbUserInfo where (userName = ?or userEmail=? or userPhoneNumber=?)and userPassword = ?";
		List<TbUserInfo> u = new ArrayList<TbUserInfo>();
		u = (List<TbUserInfo>)getHibernateTemplate().find(hql, obj);
		if(u.size()==0){
			return null;
		}else{
			return u.get(0);
		}
		
	}

	/**
	 * @author 
	 * @return 
	 * 忘记密码中，根据输入的手机号Or邮箱号判断此手机or邮箱是否被注册
	 * */
	@Override
	public TbUserInfo findUserInfo(String info) {
		Object[] obj = new Object[2];
		obj[0] = info;
		obj[1] = info;
		String hql = "from TbUserInfo where userEmail=? or userPhoneNumber=?";
		List<TbUserInfo> u = new ArrayList<TbUserInfo>();
		u = (List<TbUserInfo>)getHibernateTemplate().find(hql, obj);
		
		if(u.size()==0){
			return null;
		}else{
			return u.get(0);
		}
		
	}
    /**
     * @param userinfo
     * 注册信息存储
     * */
	@Override
	public void addRegisterTbUserInfo(TbUserInfo userinfo) {
		System.out.println("dao注册信息存储");
		System.out.println(userinfo);
		getHibernateTemplate().save(userinfo);
		System.out.println("成功");
		
	}

	  /**
     * @param tbUserInfo
     * 判断注册帐号是否有人已注册
     * */
	@Override
	public int findUserNameRegister(TbUserInfo tbUserInfo) {
		Object[] obj = new Object[1];
		obj[0] = tbUserInfo.getUserName();
		String hql = " from TbUserInfo where userName = ?";
		List<TbUserInfo> u = new ArrayList<TbUserInfo>();
		u = (List<TbUserInfo>)getHibernateTemplate().find(hql, obj);
	
		if(u.size()==0){
			return 0;
		}else{
			return 1;
		}
	
	}
	

	  /**
     * @param tbUserInfo
     * 判断注册手机号码是否有人已注册
     * */
	@Override
	public int findUserPhoneRegister(TbUserInfo tbUserInfo) {
		Object[] obj = new Object[1];
		obj[0] = tbUserInfo.getUserPhoneNumber();
		String hql = " from TbUserInfo where userPhoneNumber = ?";
	
		List<TbUserInfo> u = new ArrayList<TbUserInfo>();
		u = (List<TbUserInfo>)getHibernateTemplate().find(hql, obj);
		if(u.size()==0){
			return 0;
		}else{
			return 1;
		}
	}

	  /**
     * @param tbUserInfo
     * 判断注册时邮箱是否有人已注册
     * */
	@Override
	public int findUserEmailRegister(TbUserInfo tbUserInfo) {
		Object[] obj = new Object[1];
		obj[0] = tbUserInfo.getUserEmail();
		
		String hql = " from TbUserInfo where userEmail = ?";
		List<TbUserInfo> u = new ArrayList<TbUserInfo>();
		u = (List<TbUserInfo>)getHibernateTemplate().find(hql, obj);
		
		if(u.size()==0){
			return 0;
		}else{
			return 1;
		}
	}

	  /**
     * @param tbUserInfo
     * 修改个人信息
     * */
	@Override
	public void updateTbUserInfo(final TbUserInfo tbUserInfo) {
		// TODO Auto-generated method stub
		
		System.out.println("updateDao");
		getHibernateTemplate().update(tbUserInfo);
		System.out.println("等级修改+"+tbUserInfo.toString());
	}
	
	public void updateLevel(final TbUserInfo tbUserInfo) {
		
		final String hql = "update TbUserInfo set userLevel =? where userId = ?";
		
		
		getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session arg0) throws HibernateException,
					SQLException {
				Query query = arg0.createQuery(hql);
				query.setInteger(0, tbUserInfo.getUserLevel());
				query.setInteger(1, tbUserInfo.getUserId());
				query.executeUpdate();
				arg0.beginTransaction().commit();
				return null;
			}
		})	;	
	}
	
	
	public List<TbUserInfo> findTbUserInfos() {
		
		String hql = "from TbUserInfo where userName != 'admin'";
		
		List<TbUserInfo> users = getHibernateTemplate().find(hql);
		
		return users;
		
		
	}


	@Override
	public TbUserInfo findUserInfo(int id) {
		TbUserInfo user = (TbUserInfo) getHibernateTemplate().get(TbUserInfo.class, id);
		return user;
	}


	@Override
	public void updateUserStatus(final int status, final int userId) {
		final String hql = "update TbUserInfo set goodsStatus = ? where goodsId = ?";
		getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session arg0) throws HibernateException,
					SQLException {
				Query query = arg0.createQuery(hql);
				query.setInteger(0, status);
				query.setInteger(1, userId);
				query.executeUpdate();
				arg0.beginTransaction().commit();
				return null;
			}
		});
		
	}

    /*判断用户名是否重复注册*/
	@Override
	public TbUserInfo findUserName(String userName) {
		String hql = " from TbUserInfo where userName = ?";
		List<TbUserInfo> u = new ArrayList<TbUserInfo>();
		u = (List<TbUserInfo>)getHibernateTemplate().find(hql, userName);
		if(u.size()==0){
			return null;
		}else{
			return u.get(0);
		}	
	}

	
	
}
