package com.qst.service;


import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;

/**
 * @author 袁滢yuanying
 * @date 2019-8-12下午7:18:20
 * @version v1.0
 * 已报废
 */
public interface TbStyleService {
	
	public void addStyle(TbGoodsStyleInfo tbGoodsStyleInfo);
	
	public void deleteStyle(int id);
	
	public TbGoodsImageInfo findImageInfo(int id);
}
