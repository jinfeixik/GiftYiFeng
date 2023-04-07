package com.qst.entity;

import java.util.Set;
import org.springframework.stereotype.Component;


/**
 * TbOrderInfo entity. @author MyEclipse Persistence Tools
 */
@Component
public class TbOrderInfo implements java.io.Serializable {

	// Fields

	private Integer orderId;
	private Integer orderDistrabutionMethod;
	private String orderOrderNumber;
	private String orderPayOrderNumber;
	private Double orderAmount;
	private Integer orderGoodsNumber;
	private String orderOrderTime;
	private Integer goodsStyleId;
	private Integer addressId;
	private Integer userId;
	private Integer orderStatus;
	
	private TbUserAddressInfo tbUserAddressInfo;
	private Set<TbGoodsStyleInfo> tbGoodsStyleInfos;
	private TbUserInfo tbUserInfo;

	// Constructors

	/** default constructor */
	public TbOrderInfo() {
	}

	/** full constructor */
	public TbOrderInfo(Integer orderDistrabutionMethod, String orderOrderNumber,
			String orderPayOrderNumber, Double orderAmount,
			Integer orderGoodsNumber, String orderOrderTime,
			Integer goodsStyleId, Integer addressId,Integer userId,Integer orderStatus) {
		this.orderDistrabutionMethod = orderDistrabutionMethod;
		this.orderOrderNumber = orderOrderNumber;
		this.orderPayOrderNumber = orderPayOrderNumber;
		this.orderAmount = orderAmount;
		this.orderGoodsNumber = orderGoodsNumber;
		this.orderOrderTime = orderOrderTime;
		this.goodsStyleId = goodsStyleId;
		this.addressId = addressId;
		this.userId = userId;
		this.orderStatus = orderStatus;
	}

	// Property accessors

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getOrderDistrabutionMethod() {
		return orderDistrabutionMethod;
	}

	public void setOrderDistrabutionMethod(Integer orderDistrabutionMethod) {
		this.orderDistrabutionMethod = orderDistrabutionMethod;
	}

	public String getOrderOrderNumber() {
		return this.orderOrderNumber;
	}

	public void setOrderOrderNumber(String orderOrderNumber) {
		this.orderOrderNumber = orderOrderNumber;
	}

	public String getOrderPayOrderNumber() {
		return this.orderPayOrderNumber;
	}

	public void setOrderPayOrderNumber(String orderPayOrderNumber) {
		this.orderPayOrderNumber = orderPayOrderNumber;
	}

	public Double getOrderAmount() {
		return this.orderAmount;
	}

	public void setOrderAmount(Double orderAmount) {
		this.orderAmount = orderAmount;
	}

	public Integer getOrderGoodsNumber() {
		return this.orderGoodsNumber;
	}

	public void setOrderGoodsNumber(Integer orderGoodsNumber) {
		this.orderGoodsNumber = orderGoodsNumber;
	}

	public String getOrderOrderTime() {
		return this.orderOrderTime;
	}

	public void setOrderOrderTime(String orderOrderTime) {
		this.orderOrderTime = orderOrderTime;
	}

	public Integer getGoodsStyleId() {
		return this.goodsStyleId;
	}

	public void setGoodsStyleId(Integer goodsStyleId) {
		this.goodsStyleId = goodsStyleId;
	}

	public Integer getAddressId() {
		return this.addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public TbUserAddressInfo getTbUserAddressInfo() {
		return tbUserAddressInfo;
	}

	public void setTbUserAddressInfo(TbUserAddressInfo tbUserAddressInfo) {
		this.tbUserAddressInfo = tbUserAddressInfo;
	}

	
	public Set<TbGoodsStyleInfo> getTbGoodsStyleInfos() {
		return tbGoodsStyleInfos;
	}

	public void setTbGoodsStyleInfos(Set<TbGoodsStyleInfo> tbGoodsStyleInfos) {
		this.tbGoodsStyleInfos = tbGoodsStyleInfos;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}

	public Integer getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	
	

}