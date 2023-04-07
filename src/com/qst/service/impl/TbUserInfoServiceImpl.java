package com.qst.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.qst.dao.TbUserInfoDao;
import com.qst.dao.impl.TbUserInfoDaoImpl;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserInfoService;

@Service
public class TbUserInfoServiceImpl implements TbUserInfoService {

	@Resource(name = "tbUserInfoDaoImpl")
	private TbUserInfoDao userInfoDao;

	@Resource(name = "tbUserInfo")
	private TbUserInfo tbUserInfo;

	@Override
	public void addTbUserInfo(TbUserInfo userinfo) {
		userInfoDao.addTbUserInfo(userinfo);

	}

	@Override
	public TbUserInfo findLoginTbUserInfo(String info, String password) throws Exception {
		tbUserInfo = userInfoDao.findLoginTbUserInfo(info, password);
		return tbUserInfo;
	}

	@Override
	public void addRegisterTbUserInfo(TbUserInfo tbUserInfo) {
		userInfoDao.addRegisterTbUserInfo(tbUserInfo);
	}

	@Override
	public int findUserNameRegister(TbUserInfo tbUserInfo) {
		int i = userInfoDao.findUserNameRegister(tbUserInfo);
		return i;
	}

	@Override
	public int findUserPhoneRegister(TbUserInfo tbUserInfo) {
		int i = userInfoDao.findUserPhoneRegister(tbUserInfo);
		return i;
	}

	@Override
	public int findUserEmailRegister(TbUserInfo tbUserInfo) {
		int i = userInfoDao.findUserEmailRegister(tbUserInfo);
		return i;
	}

	@Override
	public int updateTbUserInfo(TbUserInfo tbUserInfo) {
		userInfoDao.updateTbUserInfo(tbUserInfo);
		return 0;
	}

	@Override
	public TbUserInfo findUserInfo(String info) {
		
		tbUserInfo=userInfoDao.findUserInfo(info);
		return tbUserInfo;
	}

	@Override
	public List<TbUserInfo> findTbUserInfos() {
		List<TbUserInfo> users = userInfoDao.findTbUserInfos();
		
		return users;
	}

	@Override
	public TbUserInfo findUserInfo(int id) {

		TbUserInfo user = userInfoDao.findUserInfo(id);
		return user;
	}

	@Override
	public void updateUserStatus(int status, int id) {
		userInfoDao.updateUserStatus(status, id);
		
	}

	@Override
	public List<TbUserInfo> findTbUserInfos(List<Integer> id) {
		
		List<TbUserInfo> users = new ArrayList<TbUserInfo>();
		for(int i = 0; i <id.size(); i++) {
			System.out.println("用户id" +id.get(i));
			TbUserInfo user = userInfoDao.findUserInfo(id.get(i));
			users.add(user);
		}
		
		
		return users;
	}

	@Override
	public void updateLevel(TbUserInfo tbUserInfo) {
		userInfoDao.updateLevel(tbUserInfo);
		
	}

}
