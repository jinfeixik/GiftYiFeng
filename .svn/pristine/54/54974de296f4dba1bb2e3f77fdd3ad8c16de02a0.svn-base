package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.qst.entity.TbUserInfo;

@Service
public interface TbUserInfoDao {
	
	public void addTbUserInfo(TbUserInfo userinfo );

	public TbUserInfo findLoginTbUserInfo(String info, String password) throws Exception;

	public void addRegisterTbUserInfo(TbUserInfo userinfo);

	public int findUserNameRegister(TbUserInfo tbUserInfo);

	public int findUserPhoneRegister(TbUserInfo tbUserInfo);

	public int findUserEmailRegister(TbUserInfo tbUserInfo);

	public void updateTbUserInfo(TbUserInfo tbUserInfo);

	public TbUserInfo findUserInfo(String info);
	
	public List<TbUserInfo> findTbUserInfos();
	
	public TbUserInfo findUserInfo(int id);
	
	public void updateUserStatus(int status, int userId);

	public TbUserInfo findUserName(String userName);

	public void updateLevel(final TbUserInfo tbUserInfo);
}
