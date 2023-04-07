package com.qst.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserInfoService;
import com.qst.util.DESSecretUtil;

/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-6下午8:43:48
 * @version v1.0
 */
@Repository
public class RegisterAction {

	@Autowired
	private TbUserInfoService tbUserInfoService;

	@Autowired
	private TbUserInfo tbUserInfo;

	private String notice;

	public String ifUserRegister() {

		notice = "";

		System.out.println("判断用户注册帐号是否有人注册");

		System.out.println(tbUserInfo.toString());
		int nameFlag = tbUserInfoService.findUserNameRegister(tbUserInfo);
		int phoneFlag = tbUserInfoService.findUserPhoneRegister(tbUserInfo);
		int emailFlag = tbUserInfoService.findUserEmailRegister(tbUserInfo);

		if (nameFlag == 1) {
			notice = "用户名重复";
		}
		if (phoneFlag == 1) {
			notice += " 手机号已被注册";
		}
		if (emailFlag == 1) {
			notice += " 邮箱已被注册";
		}

		if (notice == "") {
			System.out.println("帐号信息不重复，可添加");
			return "success";
		} else {
			System.out.println("帐号信息重复");
			System.out.println("notice" + notice);
			return "error";
		}

	}

	public String userRegister() throws Exception {

		System.out.println("用户注册信息存储");
		
		tbUserInfo.setUserSex(0);
		tbUserInfo.setUserBirthday("2000-01-01");
		tbUserInfo.setUserLevel(0);
		tbUserInfo.setUserStatus(0);
		tbUserInfo.setUserPassword(DESSecretUtil.encryption(tbUserInfo.getUserPassword())); 
		tbUserInfoService.addRegisterTbUserInfo(tbUserInfo);
		System.out.println("用户信息存储成功");
		return "success";

	}

	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}
}
