package com.qst.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qst.service.impl.TbUserCommentInfoServiceImpl;

public class TestDeleteComment {
	public static void main(String[] args) {
		String path = "applicationContext.xml";
		ApplicationContext ac = new ClassPathXmlApplicationContext(path);
		TbUserCommentInfoServiceImpl tgd = (TbUserCommentInfoServiceImpl)ac.getBean("tbUserCommentInfoServiceImpl");	
		 int userCommentId=2; 
		if(userCommentId==2){
		tgd.deleteUserCommentInfo(userCommentId);
		System.out.println("删除成功");
		}else{
		System.out.println("不能修改他人评论");
		}
	}

}
