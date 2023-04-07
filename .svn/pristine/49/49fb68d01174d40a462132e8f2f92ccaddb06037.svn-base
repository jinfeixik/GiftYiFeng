package com.qst.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserInfoService;

@Repository
public class HelloAction {
	@Autowired
	private TbUserInfo tbUserInfo;
	@Autowired
	private TbUserInfoService tbUserInfoService;
	
	public String hello() {
		tbUserInfo.setUserEmail("22@qq.com");
		tbUserInfo.setUserName("小暖宝");
		tbUserInfoService.addTbUserInfo(tbUserInfo);
		
		return "success";
	}

	
	
	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}
	

}
