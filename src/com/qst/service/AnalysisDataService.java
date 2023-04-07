package com.qst.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qst.entity.TbUserAddressInfo;
import com.qst.entity.TbUserInfo;


public interface AnalysisDataService {
	
	public List<TbUserInfo>  findUserAll();
	
	public List<TbUserAddressInfo>  findUserAddress();

}
