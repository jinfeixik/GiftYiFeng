package com.qst.entity;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * TbGoodsDetailInfo entity. @author MyEclipse Persistence Tools
 */
@Component
public class TbGoodsDetailInfo implements java.io.Serializable {

	private Integer goodsId;
	private String  goodsName;
	private Double  goodsPrice;
	private String  goodsDiscreable;
	private String  goodsSpecifiction;
	private Integer goodsTypeId;
	private Integer goodsStatus;
	private String  goodsTime;
	private Integer goodsSales;

	private Set<TbGoodsStyleInfo> tbGoodsStyleInfo = new HashSet<TbGoodsStyleInfo>();

	private TbGoodsTypeInfo tbGoodsTypeInfo = new TbGoodsTypeInfo();

	
	@Override
	public String toString() {
		return "TbGoodsDetailInfo [goodsId=" + goodsId + ", goodsName="
				+ goodsName + ", goodsPrice=" + goodsPrice
				+ ", goodsDiscreable=" + goodsDiscreable
				+ ", goodsSpecifiction=" + goodsSpecifiction + ", goodsTypeId="
				+ goodsTypeId + ", goodsStatus=" + goodsStatus + ", goodsTime="
				+ goodsTime + ", goodsSales=" + goodsSales + "]";
	}

	
	

	

	// Constructors

	/** default constructor */
	public TbGoodsDetailInfo() {
	}



	public TbGoodsDetailInfo(Integer goodsId, String goodsName,
			Double goodsPrice, String goodsDiscreable,
			String goodsSpecifiction, Integer goodsTypeId, Integer goodsStatus,
			String goodsTime, Integer goodsSales,
			Set<TbGoodsStyleInfo> tbGoodsStyleInfo,
			TbGoodsTypeInfo tbGoodsTypeInfo) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsDiscreable = goodsDiscreable;
		this.goodsSpecifiction = goodsSpecifiction;
		this.goodsTypeId = goodsTypeId;
		this.goodsStatus = goodsStatus;
		this.goodsTime = goodsTime;
		this.goodsSales = goodsSales;
		this.tbGoodsStyleInfo = tbGoodsStyleInfo;
		this.tbGoodsTypeInfo = tbGoodsTypeInfo;
	}



	// Property accessors

	public Integer getGoodsId() {
		return this.goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return this.goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Double getGoodsPrice() {
		return this.goodsPrice;
	}

	public void setGoodsPrice(Double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsDiscreable() {
		return this.goodsDiscreable;
	}

	public void setGoodsDiscreable(String goodsDiscreable) {
		this.goodsDiscreable = goodsDiscreable;
	}

	public String getGoodsSpecifiction() {
		return this.goodsSpecifiction;
	}

	public void setGoodsSpecifiction(String goodsSpecifiction) {
		this.goodsSpecifiction = goodsSpecifiction;
	}

	public Integer getGoodsTypeId() {
		return this.goodsTypeId;
	}

	public void setGoodsTypeId(Integer goodsTypeId) {
		this.goodsTypeId = goodsTypeId;
	}

	public Integer getGoodsStatus() {
		return this.goodsStatus;
	}

	public void setGoodsStatus(Integer goodsStatus) {
		this.goodsStatus = goodsStatus;
	}


	public Set<TbGoodsStyleInfo> getTbGoodsStyleInfo() {
		return tbGoodsStyleInfo;
	}

	public void setTbGoodsStyleInfo(Set<TbGoodsStyleInfo> tbGoodsStyleInfo) {
		this.tbGoodsStyleInfo = tbGoodsStyleInfo;
	}


	public String getGoodsTime() {
		return goodsTime;
	}

	public void setGoodsTime(String goodsTime) {
		this.goodsTime = goodsTime;
	}

	public Integer getGoodsSales() {
		return goodsSales;
	}

	public void setGoodsSales(Integer goodsSales) {
		this.goodsSales = goodsSales;
	}

	public TbGoodsTypeInfo getTbGoodsTypeInfo() {
		return tbGoodsTypeInfo;
	}

	public void setTbGoodsTypeInfo(TbGoodsTypeInfo tbGoodsTypeInfo) {
		this.tbGoodsTypeInfo = tbGoodsTypeInfo;
	}


}