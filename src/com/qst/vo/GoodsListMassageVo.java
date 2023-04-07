package com.qst.vo;

public class GoodsListMassageVo {
	
	
	private int goodsId;
	private String goodsImagePath;
	private String goodsName;
	private Double goodsPrice;
	private String goodsDiscreable;
	private Integer goodsStatus;
	private Integer goodsSales;
	
	
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsImagePath() {
		return goodsImagePath;
	}
	public void setGoodsImagePath(String goodsImagePath) {
		this.goodsImagePath = goodsImagePath;
	}
	public Integer getGoodsStatus() {
		return goodsStatus;
	}
	public void setGoodsStatus(Integer goodsStatus) {
		this.goodsStatus = goodsStatus;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Double getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsDiscreable() {
		return goodsDiscreable;
	}
	public void setGoodsDiscreable(String goodsDiscreable) {
		this.goodsDiscreable = goodsDiscreable;
	}
	
	@Override
	public String toString() {
		return "GoodsListMassageVo [goodsId=" + goodsId + ", goodsImagePath="
				+ goodsImagePath + ", goodsStatus=" + goodsStatus
				+ ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice
				+ ", goodsDiscreable=" + goodsDiscreable + "]";
	}
	
}
