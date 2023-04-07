package com.qst.dao.impl;


import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbShoppingCarDao;
import com.qst.entity.TbShoppingCar;

/**
 * @author 杨惠(yanghui)
 * @date 2019/8/6
 * @version v1.0
 */
@Repository
public class TbShoppingCarDaoImpl extends HibernateDaoSupport implements TbShoppingCarDao {

	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public void addShoppingCar(TbShoppingCar tbShoppingCar) {
		/* System.out.println("添加购物车"); */
		getHibernateTemplate().save(tbShoppingCar);

	}

	@Override
	public int findShoppingCarTotalNumber(int userId) {
		String hql = "select count(*) from TbShoppingCar where userId = " + userId;
		List<Object> obj = getHibernateTemplate().find(hql);
		int count = Integer.parseInt(obj.get(0).toString());
		return count;
	}

	@Override
	public TbShoppingCar findShoppingCarById(int shoppingCarId){
		String hql = "from TbShoppingCar where shoppingCarId = ?";
		TbShoppingCar tbShoppingCar = (TbShoppingCar) getHibernateTemplate().get(TbShoppingCar.class, shoppingCarId);
		return tbShoppingCar;
	}
	
	
	
	/* (non-Javadoc)
	 * @see com.qst.dao.TbShoppingCarDao#updateShoppingCar(com.qst.entity.TbShoppingCar)
	 * 修改金额和数量
	 */
	@Override
	public void updateShoppingCar(final TbShoppingCar tbShoppingCar){
		System.out.println("修改购物车数量和金额");
		final String hql = "update TbShoppingCar set shoppingCarAmount = ?, shoppingCarGoodsNumber=? where shoppingCarId = ?";
		
		getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session arg0) throws HibernateException,
					SQLException {

				Query query = arg0.createQuery(hql);
				query.setDouble(0, tbShoppingCar.getShoppingCarAmount());
				query.setInteger(1, tbShoppingCar.getShoppingCarGoodsNumber());
				query.setInteger(2, tbShoppingCar.getShoppingCarId());
				query.executeUpdate();
				arg0.beginTransaction().commit();
				return null;
			}
		});
	
	
	}
	
	@Override
	public List<TbShoppingCar> findTbShoppingCar(int userId){	
		String hql = "from TbShoppingCar where userId = ?";
		List<TbShoppingCar> tbShoppingCars = getHibernateTemplate().find(hql, userId);
	//	System.out.println("ID是酒叟if的");
		return tbShoppingCars;
	}

	@Override
	public void deleteShoppingCarInfo(int shoppingId) {
		TbShoppingCar cars= (TbShoppingCar) getHibernateTemplate().get(TbShoppingCar.class, shoppingId);
		if(cars != null) {
			getHibernateTemplate().clear();
			getHibernateTemplate().delete(cars);
		}
	}

}
