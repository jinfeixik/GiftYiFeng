package com.qst.test;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qst.dao.impl.TbUserCommentInfoDaoImpl;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.impl.TbUserCommentInfoServiceImpl;


public class TestAddComment {
	
	public static void main(String[] args) {
		String path = "applicationContext.xml";
		ApplicationContext ac = new ClassPathXmlApplicationContext(path);
		TbUserCommentInfoServiceImpl tgd = (TbUserCommentInfoServiceImpl)ac.getBean("tbUserCommentInfoServiceImpl");
		List<TbUserCommentInfo> tbUserCommentInfos = new ArrayList<TbUserCommentInfo>();
		List<TbUserInfo> tbUserInfo=new ArrayList<TbUserInfo>();
		//设置评论发起时间  
		TbUserCommentInfo  tbUserCommentInfo=new TbUserCommentInfo();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdf.format(date);
		tbUserCommentInfo.setUserCommentTime(dateStr);
		tbUserCommentInfo.setUserCommentContent("发货很快，包装也精美");
		tbUserCommentInfo.setUserCommentStar(5);
		tbUserCommentInfo.setUserId(4);
		tbUserCommentInfo.setGoodsId(128);
		tgd.addUserCommentInfo(tbUserCommentInfo);
		System.out.println("添加成功");
		
        /*tbUserCommentInfos=tgd.findGoodsTbUserCommentInfos(5);
		
		int commentStar[];	
		int num[];
		num=new int [5];
		commentStar=new int[tbUserCommentInfos.size()];
		
		for(int i=0;i<tbUserCommentInfos.size();i++){
			commentStar[i]=tbUserCommentInfos.get(i).getUserCommentStar();
		}
		
		for(int j=0;j<commentStar.length;j++){
			if(commentStar[j]==1){
			num[0]++;
			}else if(commentStar[j]==2){
		    num[1]++;
			}else if(commentStar[j]==3){
		    num[2]++;
			}else if(commentStar[j]==4){
			num[3]++;
			}else if(commentStar[j]==5){
			num[4]++;
			}
		}
		System.out.println("一星"+num[0]+"二星"+num[1]+"三星"+num[2]+"四星"+num[3]+"五星"+num[4]);*/
		
		/*System.out.println("我的评价");
		System.out.println("----------------------");
        tbUserCommentInfos=tgd.findMyTbUserCommentInfos(30);
    	for(TbUserCommentInfo tci1 : tbUserCommentInfos){
    		System.out.println("评论时间:  "+tci1.getUserCommentTime());
    		System.out.println("评论内容:  "+tci1.getUserCommentContent());
    		System.out.println("评论星级:  "+tci1.getUserCommentStar());
    		System.out.println("------------------------------");	
    	}*/
		/*tbUserCommentInfos=tgd.findGoodsTbUserCommentInfos(56);
		for(int i=0;i<tbUserCommentInfos.size();i++){
			tbUserInfo=tgd.findUserMessage(tbUserCommentInfos.get(i).getUserId());
			if(tbUserInfo!=null){
			System.out.println("用户昵称：  "+tbUserInfo.get(0).getUserName());
			System.out.println("用户星级: "+tbUserInfo.get(0).getUserLevel());
			}
			System.out.println("评论时间：  "+tbUserCommentInfos.get(i).getUserCommentTime());
    		System.out.println("评论内容：  "+tbUserCommentInfos.get(i).getUserCommentContent());
    		System.out.println("评论星级：  "+tbUserCommentInfos.get(i).getUserCommentStar()+"星");
    		System.out.println("-----------------------------");		
    		
    	}*/
		
		/*double count=tgd.findGoodsTbUserCommentInfos(56).size();
		System.out.println("好评数：  "+tgd.findCountUserCommentStar(56));
		System.out.println("总条数：  "+count);
		System.out.println("好评率"+(tgd.findCountUserCommentStar(56)/count)*100+"%");*/
	
	}

}
