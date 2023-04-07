package com.qst.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserInfoService;
import com.qst.util.Email;

import com.qst.util.Phone;


/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-8下午2:36:11
 * @version v1.0
 */
@Repository
public class LoginAction extends BaseAction {

	@Autowired
	private TbUserInfoService tbUserInfoService;

	@Autowired
	private TbUserInfo tbUserInfo;
	
	

	private String userInputInfo;
	private String userPassword;
	private String notice;
	private String res;
	private String phoneNumber;
	private String phoneCode;
	private String emailCode;
	private int flag;

	public LoginAction(){
		super();
	}
	
	/**
	 * @return 用户是否通过安全验证
	 */
	public String code() {

		if (res.equals("true")) {

			notice = "codeTrue";

			return "success";
		} else {
			notice = "请通过滑块验证";
			return "error";
		}
	}

	/**
	 * @return 用户登录
	 * @throws Exception 
	 */
	public String userLogin() throws Exception {

		System.out.println("登录");
		tbUserInfo = tbUserInfoService.findLoginTbUserInfo(userInputInfo,
				userPassword);

		System.out.println("res=" + res);

		System.out.println("user---------" + tbUserInfo == null);

		session.put("user", tbUserInfo);

		if (tbUserInfo == null) {
			return "error";
		} else if(tbUserInfo.getUserName().equals("admin")) {
			return "admin";
		} else {
			return "success";
		}
	}


	// 查注册为手机号的用户信息
	public String findUserInfo() {
		System.out.println("findUserInfo");
		tbUserInfo = tbUserInfoService.findUserInfo(phoneNumber);
	
		if (tbUserInfo == null) {
			session.put("user", null);
		} else {
			session.put("user", tbUserInfo);
		}
		if (tbUserInfo == null) {
			flag = 1;
		} 
		else{
			if(phoneNumber.equals(tbUserInfo.getUserPhoneNumber())){
				flag=2;//传过来的为手机号
			}
			else{
		       flag=3;//传过来的为邮箱号
		    }   
			
		}
		return "success";
	}

	/**
	 * 重置密码
	 * */
	public void updateFogetPassword() {
        
		System.out.println("进入重置密码");
		
		tbUserInfo = (TbUserInfo) session.get("user");
		
        System.out.println(tbUserInfo.getUserPhoneNumber());
        
		tbUserInfo.setUserPassword("1WLbp1Us69I=");
		
		System.out.println(tbUserInfo.getUserPassword());
		
		tbUserInfoService.updateTbUserInfo(tbUserInfo);
 
		System.out.println("重置密码成功");
	}

	public String email() {

		System.err.println("进入邮件发送");
		try {
			Email.send(phoneNumber);
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		HttpSession session = ServletActionContext.getRequest().getSession();
		emailCode= (String) session.getAttribute("email");	
		
		return "success";
	}

	/**
	 * @return 发送手机验证码
	 */
	public String phoneCode() {
     
		Phone p = new Phone();
		
		p.sendCode(phoneNumber);
						
		HttpSession session = ServletActionContext.getRequest().getSession();
		phoneCode= (String) session.getAttribute("phoneCode");	
	
		System.out.println("手机号为+" + phoneNumber + "手机验证码为：+" + phoneCode);
		
		return "success";
	}

	/**
	 * @return 验证信息不通过
	 */
	public String userLoginError() {
		if (notice.equals("codeTrue")) {
			notice = "帐号或密码错误";
		}
		return "success";
	}

	public String getUserInputInfo() {
		return userInputInfo;
	}

	public void setUserInputInfo(String userInputInfo) {
		this.userInputInfo = userInputInfo;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getRes() {
		return res;
	}

	public void setRes(String res) {
		this.res = res;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPhoneCode() {
		return phoneCode;
	}

	public void setPhoneCode(String phoneCode) {
		this.phoneCode = phoneCode;
	}

	public TbUserInfoService getTbUserInfoService() {
		return tbUserInfoService;
	}

	public void setTbUserInfoService(TbUserInfoService tbUserInfoService) {
		this.tbUserInfoService = tbUserInfoService;
	}

	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public String getEmailCode() {
		return emailCode;
	}

	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}


}
