package com.qst.entity;

import org.springframework.stereotype.Component;

/**
 * TbUserAddressInfo entity. @author MyEclipse Persistence Tools
 */
@Component
public class TbUserAddressInfo implements java.io.Serializable {

	// Fields
	private Integer addressId;
	private Integer addressDefaultAddress=0;
	private String  addressReciverPhoneNumber;
	private String  addressReciverDetailAddress;
	private String  addressReciverName;
	private String  addressReciverAddress;
	private Integer addressPostalCode;
	private Integer userId;
	
	private TbUserInfo tbUserInfo;

	// Constructors

	/** default constructor */
	public TbUserAddressInfo() {
		
	}

	
	@Override
	public String toString() {
		return "TbUserAddressInfo [addressId=" + addressId
				+ ", addressDefaultAddress=" + addressDefaultAddress
				+ ", addressReciverPhoneNumber=" + addressReciverPhoneNumber
				+ ", addressReciverDetailAddress="
				+ addressReciverDetailAddress + ", addressReciverName="
				+ addressReciverName + ", addressReciverAddress="
				+ addressReciverAddress + ", addressPostalCode="
				+ addressPostalCode + ", userId=" + userId + ", tbUserInfo="
				+ tbUserInfo + "]";
	}


	/** full constructor */
	public TbUserAddressInfo(Integer addressId, Integer addressDefaultAddress,
			String addressReciverPhoneNumber,
			String addressReciverDetailAddress, String addressReciverName,
			String addressReciverAddress, Integer addressPostalCode,
			Integer userId, Integer goodsStyleId) {
		super();
		this.addressId = addressId;
		this.addressDefaultAddress = addressDefaultAddress;
		this.addressReciverPhoneNumber = addressReciverPhoneNumber;
		this.addressReciverDetailAddress = addressReciverDetailAddress;
		this.addressReciverName = addressReciverName;
		this.addressReciverAddress = addressReciverAddress;
		this.addressPostalCode = addressPostalCode;
		this.userId = userId;
	}

	// Property accessors

	public Integer getAddressId() {
		return this.addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getAddressDefaultAddress() {
		return this.addressDefaultAddress;
	}

	public void setAddressDefaultAddress(Integer addressDefaultAddress) {
		this.addressDefaultAddress = addressDefaultAddress;
	}

	public String getAddressReciverPhoneNumber() {
		return this.addressReciverPhoneNumber;
	}

	public void setAddressReciverPhoneNumber(String addressReciverPhoneNumber) {
		this.addressReciverPhoneNumber = addressReciverPhoneNumber;
	}

	public String getAddressReciverDetailAddress() {
		return this.addressReciverDetailAddress;
	}

	public void setAddressReciverDetailAddress(
			String addressReciverDetailAddress) {
		this.addressReciverDetailAddress = addressReciverDetailAddress;
	}

	public String getAddressReciverName() {
		return this.addressReciverName;
	}

	public void setAddressReciverName(String addressReciverName) {
		this.addressReciverName = addressReciverName;
	}

	public String getAddressReciverAddress() {
		return this.addressReciverAddress;
	}

	public void setAddressReciverAddress(String addressReciverAddress) {
		this.addressReciverAddress = addressReciverAddress;
	}

	public Integer getAddressPostalCode() {
		return this.addressPostalCode;
	}

	public void setAddressPostalCode(Integer addressPostalCode) {
		this.addressPostalCode = addressPostalCode;
	}

	public Integer getUserId() {
		return this.userId;
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

}