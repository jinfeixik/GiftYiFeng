package com.qst.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;

import com.qst.dao.TbGoodsDetailInfoDao;
import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbGoodsDetailInfoService;
import com.qst.util.BeanUtil;
import com.qst.vo.GoodsListMassageVo;

/**
 * @author 袁滢yuanying
 * @date 2019-8-6下午9:08:47
 * @version v1.0
 */
@Service
public class TbGoodsDetailInfoServiceImpl extends HibernateDaoSupport implements TbGoodsDetailInfoService{

	@Autowired
	private TbGoodsDetailInfoDao tbGoodsDetailInfoDao;
	
	@Resource
	public void setSF(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void addTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		System.out.println("添加商品service...");
		
		if(tbGoodsDetailInfo.getGoodsName() != null) {
		tbGoodsDetailInfoDao.addTbGoodsDetailInfo(tbGoodsDetailInfo);
		} else {
			System.out.println("添加失败");
		}
		
		
	}

	

	@Override
	public boolean statusGoods(int status, int goodsId) {
		
		tbGoodsDetailInfoDao.statusGoods(status, goodsId);
		return true;
	}

	@Override
	public TbGoodsDetailInfo findTbGoodsDetailInfo(int goodsId) {		
		TbGoodsDetailInfo tbGoodsDetailInfo = tbGoodsDetailInfoDao.findTbGoodsDetailInfo(goodsId);
		return tbGoodsDetailInfo;
	}

	@Override
	public void delectTbGoodsDetailInfo(int[] goodIds) {
		
		for(int i = 0; i < goodIds.length; i++) {
			System.out.println(goodIds[i] +"是待删除ID");
			tbGoodsDetailInfoDao.deleteTbGoodsDetailInfo(goodIds[i]);
			
		}
		
	}

	
	@Override
	public List<GoodsListMassageVo> findTbGoodsDetailInfos() {
		
		String hql = "From TbGoodsDetailInfo";
		List<TbGoodsDetailInfo> tbGoodsDetailInfos = tbGoodsDetailInfoDao.findTbGoodsDetailInfos(hql);
		
		List<GoodsListMassageVo> goodsListMassageVos = BeanUtil.copyList(tbGoodsDetailInfos, GoodsListMassageVo.class);
		int index = 0;
		for(GoodsListMassageVo message : goodsListMassageVos) {
			List<TbGoodsStyleInfo> style = new ArrayList<TbGoodsStyleInfo>(tbGoodsDetailInfos.get(index).getTbGoodsStyleInfo());
			System.out.println("遍历商品id = " +tbGoodsDetailInfos.get(index).getGoodsId());
			if(style.size() != 0 &&style.get(0).getTbGoodsImageInfo() != null) {
			message.setGoodsImagePath(style.get(0).getTbGoodsImageInfo().getGoodsImagePath());
			System.out.println("111");
			}
			index++;
		}
		
		return goodsListMassageVos;
	}
	
	
	
	@Override
	public void updateTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {

		tbGoodsDetailInfoDao.updateTbGoodsDetailInfo(tbGoodsDetailInfo);
		
		
	}
	
	
	
	
	
	public TbGoodsDetailInfoDao getTbGoodsDetailInfoDao() {
		return tbGoodsDetailInfoDao;
	}

	public void setTbGoodsDetailInfoDao(TbGoodsDetailInfoDao tbGoodsDetailInfoDao) {
		this.tbGoodsDetailInfoDao = tbGoodsDetailInfoDao;
	}

    /**
     * 修改销量
     * */

	@Override
	public void updateTbGoodsDetailInfo2(final TbGoodsDetailInfo tb) {
		
		final String hql = "update TbGoodsDetailInfo set goodsSales =? where goodsId = ?";
		getHibernateTemplate().execute(new HibernateCallback() {
				@Override
				public Object doInHibernate(Session arg0) throws HibernateException,
						SQLException {
					Query query = arg0.createQuery(hql);
					query.setInteger(0, tb.getGoodsSales());
					query.setInteger(1, tb.getGoodsId());
					query.executeUpdate();
					arg0.beginTransaction().commit();
					return null;
				}
			})	;	
		}
		
	
}
