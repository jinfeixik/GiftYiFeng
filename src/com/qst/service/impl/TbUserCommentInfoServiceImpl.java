package com.qst.service.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;

import com.qst.dao.TbUserCommentInfoDao;
import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserCommentInfoService;
/**
 * 
 * @author 李阳liyang
 * @date 2019-8-9上午11:47:55
 * @version v1.0
 */
@Service
public class TbUserCommentInfoServiceImpl extends HibernateDaoSupport implements TbUserCommentInfoService{
	@Autowired
	private TbUserCommentInfoDao tbUserCommentInfoDao;
	
	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void addUserCommentInfo(TbUserCommentInfo tbUserCommentInfo) {
		// TODO Auto-generated method stub
		tbUserCommentInfoDao.addUserCommentInfo(tbUserCommentInfo);
		
		
	}

	@Override
	public void updateUserCommentInfo(TbUserCommentInfo tbUserCommentInfo) {
		// TODO Auto-generated method stub
		tbUserCommentInfoDao.updateUserCommentInfo(tbUserCommentInfo);
	}

	@Override
	public void deleteUserCommentInfo(int userCommentId) {
		// TODO Auto-generated method stub
		tbUserCommentInfoDao.deleteUserCommentInfo(userCommentId);
		
		
	}

	@Override
	public List<TbUserCommentInfo> findTbUserCommentInfos() {
		// TODO Auto-generated method stub
		String hql="from TbUserCommentInfo";
		List<TbUserCommentInfo> tbUserCommentInfos= tbUserCommentInfoDao.findTbUserCommentInfos(hql);
		return tbUserCommentInfos;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TbUserCommentInfo> findMyTbUserCommentInfos(final int userId) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().executeFind(new HibernateCallback() {

			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql ="from TbUserCommentInfo where userId  = ?";
				Query query = session.createQuery(hql);
				query.setInteger(0, userId);		
				List<TbUserCommentInfo> tuc1 = query.list();
				return tuc1;
			}
		});
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TbUserCommentInfo> findGoodsTbUserCommentInfos(final int goodsId) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().executeFind(new HibernateCallback() {

			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql ="from TbUserCommentInfo where goodsId  = ?";
				Query query = session.createQuery(hql);
				query.setInteger(0, goodsId);		
				List<TbUserCommentInfo> tuc2 = query.list();
				return tuc2;
			}
		});
	}

	@Override
	public int findCountUserCommentStar(int goodsId) {
		// TODO Auto-generated method stub
		String hql ="select count(*) from TbUserCommentInfo where  userCommentStar=5 and  goodsId  = "+goodsId;
		return tbUserCommentInfoDao.findCountUserCommentStar(hql, goodsId);		
	}

	@Override
	public List<TbUserInfo> findUserMessage(int userId) {
		// TODO Auto-generated method stub
		String hql ="from TbUserInfo where userId  = "+userId;
		List<TbUserInfo> tbUserInfo= tbUserCommentInfoDao.findUserMessage(hql, userId);
		return tbUserInfo;
	}

}
