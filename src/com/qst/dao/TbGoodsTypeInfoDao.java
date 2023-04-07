package com.qst.dao;

import java.util.List;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsTypeInfo;
/**
 * 
 * @author 李阳liyang
 * @date 2019-8-6下午5:48:37
 * @version v1.0
 */
public interface TbGoodsTypeInfoDao {
	
	public List<TbGoodsTypeInfo> findGoodsType(String occation,int price,String object,String classify);
	
	public TbGoodsDetailInfo findDetalilInfo(int id);
}
