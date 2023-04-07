package com.qst.entity;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

/**
 * TbGoodsStyleInfo entity. @author MyEclipse Persistence Tools
 */
@Component
public class TbGoodsStyleInfo  implements java.io.Serializable {

	// Fields

	private Integer goodsStyleId;
	private String goodsStyleName;
	private Integer goodsStyleStock;
	private Integer goodsId;
	private Integer goodsImageId;

	private TbGoodsDetailInfo tbGoodsDetailInfo;
	private TbGoodsImageInfo tbGoodsImageInfo;
	private TbOrderInfo tbOrderInfo;
	
	

	// Constructors

	@Override
	public String toString() {
		return "TbGoodsStyleInfo [goodsStyleId=" + goodsStyleId
				+ ", goodsStyleName=" + goodsStyleName + ", goodsStyleStock="
				+ goodsStyleStock + ", goodsId=" + goodsId + ", goodsImageId="
				+ goodsImageId + "]";
	}

	/** default constructor */
	public TbGoodsStyleInfo() {
	}

	/** full constructor */
	public TbGoodsStyleInfo(String goodsStyleName, Integer goodsStyleStock,
			Integer goodsId, Integer goodsImageId) {
		this.goodsStyleName = goodsStyleName;
		this.goodsStyleStock = goodsStyleStock;

		this.goodsId = goodsId;

		//this.setGoodsId(goodsId);

		this.goodsImageId = goodsImageId;
	}

	// Property accessors

	public Integer getGoodsStyleId() {
		return this.goodsStyleId;
	}

	public void setGoodsStyleId(Integer goodsStyleId) {
		this.goodsStyleId = goodsStyleId;
	}

	public String getGoodsStyleName() {
		return this.goodsStyleName;
	}

	public void setGoodsStyleName(String goodsStyleName) {
		this.goodsStyleName = goodsStyleName;
	}

	public Integer getGoodsStyleStock() {
		return this.goodsStyleStock;
	}

	public void setGoodsStyleStock(Integer goodsStyleStock) {
		this.goodsStyleStock = goodsStyleStock;
	}


	public Integer getGoodsImageId() {
		return this.goodsImageId;
	}

	public void setGoodsImageId(Integer goodsImageId) {
		this.goodsImageId = goodsImageId;
	}

	public TbGoodsDetailInfo getTbGoodsDetailInfo() {
		return tbGoodsDetailInfo;
	}

	public void setTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		this.tbGoodsDetailInfo = tbGoodsDetailInfo;
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public TbGoodsImageInfo getTbGoodsImageInfo() {
		return tbGoodsImageInfo;
	}

	public void setTbGoodsImageInfo(TbGoodsImageInfo tbGoodsImageInfo) {
		this.tbGoodsImageInfo = tbGoodsImageInfo;
	}
	
	/*@Override
	public String toString() {
		return "TbGoodsStyleInfo [goodsStyleId=" + goodsStyleId
				+ ", goodsStyleName=" + goodsStyleName + ", goodsStyleStock="
				+ goodsStyleStock + ", goodsId=" + goodsId + ", goodsImageId="
				+ goodsImageId + ", tbGoodsDetailInfo=" + tbGoodsDetailInfo+ "]";
	}*/


	public TbOrderInfo getTbOrderInfo() {
		return tbOrderInfo;
	}

	public void setTbOrderInfo(TbOrderInfo tbOrderInfo) {
		this.tbOrderInfo = tbOrderInfo;
	}

	/*@Override
	public String toString() {
		return "TbGoodsStyleInfo [goodsStyleId=" + goodsStyleId
				+ ", goodsStyleName=" + goodsStyleName + ", goodsStyleStock="
				+ goodsStyleStock + ", goodsId=" + goodsId + ", goodsImageId="
				+ goodsImageId + "]";
	}*/


}