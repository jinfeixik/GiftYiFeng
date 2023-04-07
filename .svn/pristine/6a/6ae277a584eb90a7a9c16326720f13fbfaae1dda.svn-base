package com.qst.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserInfoService;

/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-8下午4:02:09
 * @version v1.0 用户个人信息
 */
@Repository 
public class UserInfoAction extends BaseAction {

	@Autowired
	private TbUserInfoService tbUserInfoService;

	@Autowired
	private TbUserInfo tbUserInfo;
    
	private String password2;
	
	private List<TbUserInfo> tbUserInfos;

	private int userId;
	private int status;


/**
 *修改个人信息 
 * */
	public String updateUserInfo() {
		

		TbUserInfo user = (TbUserInfo) session.get("user");
		
		tbUserInfo.setUserId(user.getUserId());
		tbUserInfo.setUserPassword(user.getUserPassword());
		tbUserInfo.setUserLevel(user.getUserLevel());
		
		tbUserInfoService.updateTbUserInfo(tbUserInfo);
		
		session.put("user",tbUserInfo);
		
		return "success";
	}
/**
 * 
 * 修改个人密码
 * */
	public String updatePassword(){
			    
	    tbUserInfo= (TbUserInfo)session.get("user");
	    
		tbUserInfo.setUserPassword(password2);
		
		tbUserInfoService.updateTbUserInfo(tbUserInfo);
	
		session.put("user",tbUserInfo);
		

		
		return "success";
	}
	
	
	
	/**
	 * @author 19892
	 * @return
	 */
	public String findUsers() {
		
		tbUserInfos = tbUserInfoService.findTbUserInfos();
		System.out.println("用户信息");
		for(TbUserInfo user: tbUserInfos) {
			System.out.println(user.getUserName());
		}
		return "success";
	}
	
	public String findUserId() {
		
		tbUserInfo = tbUserInfoService.findUserInfo(userId);
		System.out.println(tbUserInfo.toString());
		return "success";
	}

	
	public String updateUserStatus() {
		
		tbUserInfoService.updateUserStatus(status, userId);
		
		return "success";
	}
	
	
	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}
	public TbUserInfoService getTbUserInfoService() {
		return tbUserInfoService;
	}

	public void setTbUserInfoService(TbUserInfoService tbUserInfoService) {
		this.tbUserInfoService = tbUserInfoService;
	}
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public List<TbUserInfo> getTbUserInfos() {
		return tbUserInfos;
	}
	public void setTbUserInfos(List<TbUserInfo> tbUserInfos) {
		this.tbUserInfos = tbUserInfos;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

}
