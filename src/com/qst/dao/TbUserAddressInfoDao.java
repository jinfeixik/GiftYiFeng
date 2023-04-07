package com.qst.dao;

import java.util.List;

import com.qst.entity.TbUserAddressInfo;

/**
 * @author 袁滢yuanying
 * @date 2019-8-13下午5:51:01
 * @version v1.0
 */
public interface TbUserAddressInfoDao {
	public void addAddress(TbUserAddressInfo tbUserAddressInfo);
	
	public List<TbUserAddressInfo> findUserId(int userId);
	
	public void delAddress(int addressId);
	
	public void updateAddress(TbUserAddressInfo tbUserAddressInfo);
	
	public TbUserAddressInfo findAddressByAddressId(int addressId);
	
	/**
	 * @return
	 * 查找默认地址
	 */
	public TbUserAddressInfo findAddressDefault();

	
	/**
	 * @param addressId
	 * @param status
	 * 修改默认地址
	 */
	public void updateDefault(final int addressId, final int status);
}
