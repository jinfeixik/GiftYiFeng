package com.qst.service;

import java.util.List;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.vo.GoodsListMassageVo;


/**
 * @author 袁滢yuanying
 * @date 2019-8-6下午8:21:53
 * @version v1.0
 */
public interface TbGoodsDetailInfoService{
	
	
	/**
	 * @param tbGoodsDetailInfo
	 * 添加商品
	 */
	public void addTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo);
	
	
	/**
	 * @param status
	 * @return
	 * 修改商品状态   0为上架，1为下架
	 */
	public boolean statusGoods(int status, int goodsId);
	
	
	
	/**
	 * @param goodsId
	 * @return
	 * 根据id查找到一条商品信息
	 */
	public TbGoodsDetailInfo findTbGoodsDetailInfo(int goodsId);
	
	
	/**
	 * @return
	 * 所有商品信息 并把信息传到GoodsListMassageVo类中
	 */
	public List<GoodsListMassageVo> findTbGoodsDetailInfos();
	
	
	/**
	 * @param goodIds
	 * 删除商品（单条或多条）
	 */
	public void delectTbGoodsDetailInfo(int[] goodIds);
	
	
	public void updateTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo);


	public void updateTbGoodsDetailInfo2(TbGoodsDetailInfo tb);
	

}
