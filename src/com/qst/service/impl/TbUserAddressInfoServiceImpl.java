package com.qst.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbUserAddressInfoDao;

import com.qst.entity.TbUserAddressInfo;

import com.qst.service.TbUserAddressInfoService;

@Service
public class TbUserAddressInfoServiceImpl implements TbUserAddressInfoService {

	@Autowired
	private TbUserAddressInfoDao tbUserAddressInfoDao;
	
	
	@Override
	public void addAddress(TbUserAddressInfo tbUserAddressInfo) {
		tbUserAddressInfoDao.addAddress(tbUserAddressInfo);
		
	}


	@Override
	public List<TbUserAddressInfo> findUserId(int userId) {
		return tbUserAddressInfoDao.findUserId(userId);
	}


	@Override
	public void delAddress(int addressId) {
		tbUserAddressInfoDao.delAddress(addressId);
		
	}


	@Override
	public void updateAddress(TbUserAddressInfo tbUserAddressInfo) {
		tbUserAddressInfoDao.updateAddress(tbUserAddressInfo);
		
	}


	@Override
	public TbUserAddressInfo findAddressByAddressId(int addressId) {
		return tbUserAddressInfoDao.findAddressByAddressId(addressId);
	}


	@Override
	public TbUserAddressInfo findAddressDefault() {
		TbUserAddressInfo adress = tbUserAddressInfoDao.findAddressDefault();
		return adress;
	}


	@Override
	public void updateDefault(int addressId, int status) {
		tbUserAddressInfoDao.updateDefault(addressId, status);
		
	}

	

}
