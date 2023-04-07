package com.qst.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbMyCollectDao;
import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbMyCollect;
import com.qst.service.TbMyCollectService;
import com.qst.util.BeanUtil;
import com.qst.vo.MyCollectVO;



/**
 * @author 杨惠(yanghui)
 * @date 2019/8/14
 * @version v1.0
 */
@Service
public class TbMyCollectServiceImpl implements TbMyCollectService{

	@Autowired
	private  TbMyCollectDao tbMyCollectDao;
	
	@Override
	public void addMyCollect(TbMyCollect tbMyCollect) {
		tbMyCollectDao.addMyCollect(tbMyCollect);
		
	}

	@Override
	public List<MyCollectVO> findMyCollect(int userId) {
		List<TbMyCollect> collects = tbMyCollectDao.findMyCollect(userId);
		List<MyCollectVO> myCollectVOs = BeanUtil.copyList(collects, MyCollectVO.class);
		int index = 0;
		int count=0;
		for(MyCollectVO myCollectVO:myCollectVOs){
			 TbGoodsDetailInfo detail = collects.get(index).getTbGoodsDetailInfo();
			 List<TbGoodsStyleInfo> styles = new ArrayList<TbGoodsStyleInfo>(detail.getTbGoodsStyleInfo());
			 String img = styles.get(0).getTbGoodsImageInfo().getGoodsImagePath();
			
			 myCollectVO.setGoodsImagePath(img);
			 myCollectVO.setGoodsName(detail.getGoodsName());
			 myCollectVO.setGoodsPrice(detail.getGoodsPrice());
			 myCollectVO.setGoodsId(detail.getGoodsId());
			 index++;
		 }
		for(MyCollectVO myCollectVO:myCollectVOs){
			System.out.println("信息");
			 System.out.println(myCollectVO.getGoodsName());
			 System.out.println(myCollectVO.getGoodsImagePath());
		}
		 
		return myCollectVOs;
	}

	@Override
	public void delMyCollect(int myCollectId) {
		tbMyCollectDao.delMyCollect(myCollectId);
		
	}
	

}
