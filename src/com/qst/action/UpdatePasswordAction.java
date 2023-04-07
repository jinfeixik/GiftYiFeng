package com.qst.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserInfoService;
import com.qst.util.DESSecretUtil;

@Repository
public class UpdatePasswordAction extends BaseAction{
	@Resource
	private TbUserInfoService tbUserInfoService;
	
	private String password1;
	private String password2;
	private String password3;
    private String notice;
	public  String updatePassword() throws Exception{
		
	System.out.println("进入修改密码");
	
    TbUserInfo tbUserInfo=(TbUserInfo) session.get("user");
  
     password1=DESSecretUtil.encryption(password1);

	if(password1.equals(tbUserInfo.getUserPassword()))
		{ 
		       if(password2.equals(password3)){
		    	   
	           password2=DESSecretUtil.encryption(password2);
	           tbUserInfo.setUserPassword(password2);
	           tbUserInfoService.updateTbUserInfo(tbUserInfo);
	           notice="修改成功";
		       }
		       else
		       { 
		        notice="两次密码不一致";
               }
		}
		else{ 
	
		notice="原密码错误";	
		}
	 
	return "success";
}

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getPassword3() {
		return password3;
	}

	public void setPassword3(String password3) {
		this.password3 = password3;
	}

	public TbUserInfoService getTbUserInfoService() {
		return tbUserInfoService;
	}

	public void setTbUserInfoService(TbUserInfoService tbUserInfoService) {
		this.tbUserInfoService = tbUserInfoService;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

}
