package com.qst.entity;

import org.springframework.beans.factory.annotation.Autowired;

/**
 * TbMyCollect entity. @author MyEclipse Persistence Tools
 */

public class TbMyCollect implements java.io.Serializable {

	// Fields

	private Integer myCollectId;
	private Integer userId;
	private Integer goodsId;
	/*private Integer goodsStyleId;*/



	private TbGoodsDetailInfo tbGoodsDetailInfo;
	private TbUserInfo tbUserInfo;
	/*private TbGoodsStyleInfo tbGoodsStyleInfo;*/


	// Constructors

	/** default constructor */
	public TbMyCollect() {
	}

	/** full constructor */
	public TbMyCollect(Integer userId, Integer goodsId) {
		this.userId = userId;
		this.goodsId = goodsId;
		/*this.goodsStyleId=goodsStyleId;*/
	}

	// Property accessors

	@Override
	public String toString() {
		return "TbMyCollect [myCollectId=" + myCollectId + ", userId=" + userId
				+ ", goodsId=" + goodsId + ", tbGoodsDetailInfo="
				+ tbGoodsDetailInfo + ", tbUserInfo=" + tbUserInfo + "]";
	}

	public Integer getMyCollectId() {
		return this.myCollectId;
	}

	public void setMyCollectId(Integer myCollectId) {
		this.myCollectId = myCollectId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public TbGoodsDetailInfo getTbGoodsDetailInfo() {
		return tbGoodsDetailInfo;
	}

	public void setTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		this.tbGoodsDetailInfo = tbGoodsDetailInfo;
	}

	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}

/*	public TbGoodsStyleInfo getTbGoodsStyleInfo() {
		return tbGoodsStyleInfo;
	}

	public void setTbGoodsStyleInfo(TbGoodsStyleInfo tbGoodsStyleInfo) {
		this.tbGoodsStyleInfo = tbGoodsStyleInfo;
	}*/

	/*public Integer getGoodsStyleId() {
		return goodsStyleId;
	}

	public void setGoodsStyleId(Integer goodsStyleId) {
		this.goodsStyleId = goodsStyleId;
	}*/


	

}