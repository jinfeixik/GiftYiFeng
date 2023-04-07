package com.qst.dao;


import java.util.List;

import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbGoodsStyleInfo;

/**
 * @author 袁滢yuanying
 * @date 2019-8-12下午7:10:24
 * @version v1.0
 * 已报废
 */

public interface TbStyleDao {

	
	/**
	 * @param tbGoodsStyleInfo
	 * 给商品添加样式
	 */
	public void addStyle(TbGoodsStyleInfo tbGoodsStyleInfo);
	
	
	/**
	 * @param tbGoodsStyleInfo
	 * 删除商品样式
	 */
	public void deleteStyle(int id);
	
	/**
	 * @param styleId
	 * @return
	 * 根据id查找样式
	 */
	public TbGoodsStyleInfo findStyle(int styleId);
	
	
	/**
	 * @param tbGoodsStyleInfo
	 * 修改样式
	 */
	public void updateStyle(TbGoodsStyleInfo tbGoodsStyleInfo);


	public TbGoodsImageInfo findImageInfo(int imageId);

	

}
