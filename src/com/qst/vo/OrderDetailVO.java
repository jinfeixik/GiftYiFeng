package com.qst.vo;

import com.qst.entity.TbUserAddressInfo;

public class OrderDetailVO {
	private String  orderOrderNumber;//订单号
	private String  orderOrderTime;//订单时间
	private Integer orderGoodsNumber;//订单数量
	private String  goodsImagePath;//图片路径
	private String  goodsName;//商品名
	private Double  goodsPrice;//商品价格
	private String goodsStyleName;//商品款式名
	private TbUserAddressInfo tbUserAddressInfo;//地址信息
	public String getOrderOrderNumber() {
		return orderOrderNumber;
	}
	public void setOrderOrderNumber(String orderOrderNumber) {
		this.orderOrderNumber = orderOrderNumber;
	}
	public String getOrderOrderTime() {
		return orderOrderTime;
	}
	public void setOrderOrderTime(String orderOrderTime) {
		this.orderOrderTime = orderOrderTime;
	}
	public Integer getOrderGoodsNumber() {
		return orderGoodsNumber;
	}
	public void setOrderGoodsNumber(Integer orderGoodsNumber) {
		this.orderGoodsNumber = orderGoodsNumber;
	}
	public String getGoodsImagePath() {
		return goodsImagePath;
	}
	public void setGoodsImagePath(String goodsImagePath) {
		this.goodsImagePath = goodsImagePath;
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
	public String getGoodsStyleName() {
		return goodsStyleName;
	}
	public void setGoodsStyleName(String goodsStyleName) {
		this.goodsStyleName = goodsStyleName;
	}
	public TbUserAddressInfo getTbUserAddressInfo() {
		return tbUserAddressInfo;
	}
	public void setTbUserAddressInfo(TbUserAddressInfo tbUserAddressInfo) {
		this.tbUserAddressInfo = tbUserAddressInfo;
	}
	
	
	
}
