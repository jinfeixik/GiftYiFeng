package com.qst.action;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.dao.TbUserInfoDao;
import com.qst.entity.TbUserInfo;

@Controller
public class IsUserRegisterAction {
	private TbUserInfo user;
	private String flag;
	private String userName;
	
	@Autowired
	TbUserInfoDao tbUserInfoDao;
	
	public String isUserRegister(){
		flag="Y";
		if(tbUserInfoDao.findUserName(userName)!=null){
			flag="X";
		}
		if(userName.equals("")){
			flag="Z";
		}else if(userName.length()<3){
			flag="M";
		}else if(userName.length()>16){
			flag="N";
		}
		
		return "success";
	}
	
	public TbUserInfo getUser() {
		return user;
	}

	public void setUser(TbUserInfo user) {
		this.user = user;
	}

	public TbUserInfoDao getTbUserInfoDao() {
		return tbUserInfoDao;
	}

	public void setTbUserInfoDao(TbUserInfoDao tbUserInfoDao) {
		this.tbUserInfoDao = tbUserInfoDao;
	}

	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	

}
