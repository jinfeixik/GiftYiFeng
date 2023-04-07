package com.qst.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.qst.dao.TbOrderInfoDao;
import com.qst.entity.TbOrderInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbOrderInfoService;

/**
 * @author 杨惠(yanghui)
 * @date 2019/8/9 17:51
 * @version v1.0
 */
@Repository
public class TbOrderInfoDaoImpl extends HibernateDaoSupport implements TbOrderInfoDao {

	@Resource
	public void setSF(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public void add(TbOrderInfo tbOrderInfo) {
		getHibernateTemplate().clear();
		getHibernateTemplate().save(tbOrderInfo);

	}
	
	@Override
	public String createOrderNum(){
		int r1=(int)(Math.random()*(10));//产生2个0-9的随机数
		int r2=(int)(Math.random()*(10));
		long now = System.currentTimeMillis();//一个13位的时间戳
		String paymentID =String.valueOf(r1)+String.valueOf(r2)+String.valueOf(now);// 订单ID
		return paymentID;
	}
	
	@Override
	public String createOrderTime() {
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		return df.format(day);
	}
	@Override
	public List<TbOrderInfo> findAllOrderInfo2(int userId) {
		String hql="from TbOrderInfo where userId = ?";
		List<TbOrderInfo> orders =  getHibernateTemplate().find(hql, userId);
		return orders;
	}
	
	@Override
	public void addOrderInfo(TbOrderInfo tbOrderInfo) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public TbOrderInfo findTbOrderInfo(String out_trade_no) {
		Object[] obj = new Object[1];
		obj[0] =out_trade_no;
	
		String hql = "from TbOrderInfo where orderOrderNumber=?";
		List<TbOrderInfo> u = new ArrayList<TbOrderInfo>();
		u = (List<TbOrderInfo>)getHibernateTemplate().find(hql, obj);
		if(u.size()==0){
			return null;
		}else{
			return u.get(0);
		}
		
	}
	@Override
	public void updateTbUserInfo(TbOrderInfo tbOrderInfo) {
		getHibernateTemplate().update(tbOrderInfo);
		
	}

	@Override
	public List<TbOrderInfo> findTbThistOrderInfo(String out_trade_no) {
		Object[] obj = new Object[1];
		obj[0] =out_trade_no;
	
		String hql = "from TbOrderInfo where orderOrderNumber=? ORDER BY orderOrderNumber DESC";
		List<TbOrderInfo> u = new ArrayList<TbOrderInfo>();
		u = (List<TbOrderInfo>)getHibernateTemplate().find(hql, obj);
	
		if(u.size()==0){
			return null;
		}else{
			return u;
		}
	}
	@Override
	public List<String> finAllOrderNumber(Integer userId) {
		Object[] obj = new Object[1];
		obj[0] =userId;
	 
		String hql = "select  distinct orderOrderNumber from TbOrderInfo where userId=? ORDER BY orderOrderNumber DESC";
		List<String> u = new ArrayList<String>();
		u = (List<String>)getHibernateTemplate().find(hql, obj);
		if(u.size()==0){
			return null;
		}else{
			return u;
		}
	}

	
	@Override

	public TbOrderInfo findTbOrderInfo(String orderNumber, int styleId) {
		Object[] obj = new Object[2];
		obj[0] =orderNumber;
		obj[1] =styleId;
	 
		String hql = "from TbOrderInfo where orderOrderNumber=? and goodsStyleId=?";
		List<TbOrderInfo> u = new ArrayList<TbOrderInfo>();
		u = (List<TbOrderInfo>)getHibernateTemplate().find(hql, obj);
		if(u.size()==0){
			return null;
		}else{
			return u.get(0);
		}
	}
	public List<TbOrderInfo> findAllOrderInfos() {
		String hql = "from TbOrderInfo";
		List<TbOrderInfo> orders = (List<TbOrderInfo>)getHibernateTemplate().find(hql);
		return orders;

	}
	@Override
	public TbOrderInfo findPartOrderInfos(int id) {
		List<TbOrderInfo> info = (List<TbOrderInfo>) getHibernateTemplate().get(TbOrderInfo.class, id);
		 return info.get(0);
	}
	

}
