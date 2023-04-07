package com.qst.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbMyCollectDao;
import com.qst.entity.TbMyCollect;


/**
 * @author 杨惠(yanghui)
 * @date 2019/8/14
 * @version v1.0
 */
@Repository
public class TbMyCollectDaoImpl extends HibernateDaoSupport implements TbMyCollectDao{

	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void addMyCollect(TbMyCollect tbMyCollect) {
		getHibernateTemplate().save(tbMyCollect);
		
	}

	@Override
	public List<TbMyCollect> findMyCollect(int userId) {
		String hql="from TbMyCollect where userId = ?";
		List<TbMyCollect> myCollects = getHibernateTemplate().find(hql,userId);
		/*for(TbMyCollect myCollect:myCollects){
			System.out.println("哈哈哈");
		System.out.println("myCollect商品名"+myCollect.getTbGoodsDetailInfo().getGoodsName());
		}*/
		return myCollects;
	}

	@Override
	public void delMyCollect(int myCollectId) {
		/*String hql = "from TbMyCollect where myCollectId=?";
		TbMyCollect collect=  (TbMyCollect) getHibernateTemplate().find(hql, myCollectId);
		getHibernateTemplate().delete(collect);
		System.out.println("遍历"+collect.toString());*/
		
		
		TbMyCollect collect = (TbMyCollect) getHibernateTemplate().get(TbMyCollect.class, myCollectId);
		System.out.println("拖it共IG噢IG为欧冠IG看i"+collect.toString());
		
		this.getHibernateTemplate().delete(collect);
		System.out.println("删除成功\n\n\n\n\n\n\n\n\n");
		
		/*if(collect!=null){
			getHibernateTemplate().clear();
			getHibernateTemplate().delete(collect);
		}*/
	}

}
