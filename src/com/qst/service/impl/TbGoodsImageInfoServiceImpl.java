package com.qst.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbGoodsImageInfoDao;
import com.qst.service.TbGoodsImageInfoService;

@Service
public class TbGoodsImageInfoServiceImpl implements TbGoodsImageInfoService{
	@Autowired
	private TbGoodsImageInfoDao tbGoodsImageInfoDao;

	@Override
	public String fingImagePath(int goodsImageId) {
		return	tbGoodsImageInfoDao.findImagePath(goodsImageId);
		 
	}
	
	
	
}
