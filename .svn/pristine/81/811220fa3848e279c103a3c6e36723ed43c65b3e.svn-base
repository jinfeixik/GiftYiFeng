package com.qst.test;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import com.qst.util.Email;

public class ZhtEmail {
	
	public static String getString(int n) {
	String str="12345890wertyuiopsdfghjklzxcvbnm";

    Random r=new Random();
    String ss="";
    for(int i=0;i<n;i++){
    char c=str.charAt(r.nextInt(str.length()));
    ss=ss+c;
    }
	
	return ss;
	
	
}

public static void main(String[] args) {
	
	String code = getString(6);
	
	System.out.println(code);
	
	try {
		Email.send("1641140995@qq.com");
	} catch (AddressException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (MessagingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	System.out.println("邮箱发送完成");
	
	
	
}
}
