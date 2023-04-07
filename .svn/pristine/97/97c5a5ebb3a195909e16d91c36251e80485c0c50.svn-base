package com.qst.action;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import com.qst.util.MailUtilYY;
@Controller
public class SendEmailAction {
	
	private String addressMail;
	
	public String email() throws AddressException, MessagingException {
		System.out.println("待发送邮箱" +addressMail);
		

		try {
				MailUtilYY.sendMail("1014165248@qq.com", "aaaa", "找回密码");	
		} catch (AddressException e) {
			System.out.println("地址错误");
			return "errorAddress";
		} catch (MessagingException e) {
			System.out.println("信息错误" + e);
			return "errorMessage";
		}
		//MailUtilYY.main(null);
		return "success";
	}

	public String getAddressMail() {
		return addressMail;
	}

	public void setAddressMail(String addressMail) {
		this.addressMail = addressMail;
	}

}
