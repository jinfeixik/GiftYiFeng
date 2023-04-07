package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.qst.entity.TbOrderInfo;
import com.qst.entity.TbUserAddressInfo;
import com.qst.entity.TbUserInfo;

/**
 * 
 * @author 李阳liyang
 * @date 2019-8-12下午2:11:07
 * @version v1.0
 */
@Service
public interface AnalysisDataDao {
	/**
	 * 寻找所有用户信息
	 */		
	public List<TbUserInfo>  findUserAll(String hql);
	/**
	 * 用户地址
	 */
	public List<TbUserAddressInfo>  findUserAddress(String hql);

}
