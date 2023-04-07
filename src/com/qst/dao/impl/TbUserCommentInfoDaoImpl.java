package com.qst.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbUserCommentInfoDao;
import com.qst.entity.TbShoppingCar;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
/**
 * 
 * @author 李阳liyang
 * @date 2019-8-9上午11:31:27
 * @version v1.0
 */

@Repository
public class TbUserCommentInfoDaoImpl extends HibernateDaoSupport implements TbUserCommentInfoDao{
	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public void addUserCommentInfo(TbUserCommentInfo tbUserCommentInfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(tbUserCommentInfo);
	}

	@Override
	public void updateUserCommentInfo(TbUserCommentInfo tbUserCommentInfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(tbUserCommentInfo);
	}

	@Override
	public void deleteUserCommentInfo(int userCommentId) {
		// TODO Auto-generated method stub
		TbUserCommentInfo comments= (TbUserCommentInfo) getHibernateTemplate().get(TbUserCommentInfo.class, userCommentId);
		getHibernateTemplate().delete(comments);
		
	}
	@Override
	public List<TbUserCommentInfo> findTbUserCommentInfos(String hql) {
		// TODO Auto-generated method stub
		List<TbUserCommentInfo> tbUserCommentInfos=getHibernateTemplate().find(hql);
		return tbUserCommentInfos;
	}
	@Override
	public List<TbUserCommentInfo> findMyTbUserCommentInfos(String hql,
			int userId) {
		// TODO Auto-generated method stub
		List<TbUserCommentInfo> myTbUserCommentInfos=getHibernateTemplate().find(hql);
		return myTbUserCommentInfos;
	}
	@Override
	public List<TbUserCommentInfo> findGoodsTbUserCommentInfos(String hql,
			int goodsId) {
		// TODO Auto-generated method stub
		List<TbUserCommentInfo> goodsTbUserCommentInfos=getHibernateTemplate().find(hql);
		return goodsTbUserCommentInfos;
	}
	@Override
	public int findCountUserCommentStar(String hql,int goodsId) {
		// TODO Auto-generated method stub
		List<Object> obj = getHibernateTemplate().find(hql);
		int count = Integer.parseInt(obj.get(0).toString());
		return count;
	}
	@Override
	public List<TbUserInfo> findUserMessage(String hql, int userId) {
		// TODO Auto-generated method stub
		List<TbUserInfo> tbUserInfo=getHibernateTemplate().find(hql);
		return tbUserInfo;
	}

}
