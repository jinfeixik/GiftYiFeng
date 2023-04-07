package com.qst.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserCommentInfoService;
/**
 * 
 * @author 李阳liyang
 * @date 2019-8-9下午2:22:49
 * @version v1.0
 */

@Repository
public class AddUserCommentAction extends BaseAction{
	@Autowired
	private   TbUserCommentInfoService  tbUserCommentInfoService;
	
	
	private TbUserCommentInfo  tbUserCommentInfo;
	
	
	private TbUserInfo  tbUserInfo;
	
	private String userCommentContent;
	
	private Integer userCommentStar;
	
	private Integer goodsId;
	
	private   int userCommentId;
	
	private List<TbUserCommentInfo> tbUserCommentInfos = new ArrayList<TbUserCommentInfo>();
	private List<TbUserInfo> tbUserInfos = new ArrayList<TbUserInfo>();
	
	//发布评论
	public String  AddUserComment(){
		
    //设置评论发起时间  
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateStr = sdf.format(date);
	tbUserCommentInfo.setUserCommentTime(dateStr);
	
	//设置评论用户id
	TbUserInfo tbUserInfo=(TbUserInfo)session.get("user");
	tbUserCommentInfo.setUserId(tbUserInfo.getUserId());
	
	//设置评论内容
	tbUserCommentInfo.setUserCommentContent(userCommentContent);
	
	//设置评论星级
	tbUserCommentInfo.setUserCommentStar(userCommentStar);
	
	//设置商品id
	tbUserCommentInfo.setGoodsId(goodsId);
	
	tbUserCommentInfoService.addUserCommentInfo(tbUserCommentInfo);
		
	return "success";
	}
	
	//删除评论
    public String  DeleteUserComment(){
		
		TbUserInfo tbUserInfo=(TbUserInfo)session.get("user");
		//判断是否本人评论
		if(tbUserInfo.getUserId()==userCommentId){
		tbUserCommentInfoService.deleteUserCommentInfo(userCommentId);
		}else{
			System.out.println("不能修改他人评论");
		}
	       return "success";
	}
    
   
    public String  FindUserCommentByUserId(){
    	
    	TbUserInfo tbUserInfo=(TbUserInfo)session.get("user");
    	tbUserCommentInfos=tbUserCommentInfoService.findMyTbUserCommentInfos(tbUserInfo.getUserId());
    	
    	for(TbUserCommentInfo tci1 : tbUserCommentInfos){
    		System.out.println("评论时间"+tci1.getUserCommentTime());
    		System.out.println("评论内容"+tci1.getUserCommentContent());
    		System.out.println("评论星级"+tci1.getUserCommentContent());
    		System.out.println("------------------------------");	
    	}
    	
		return "succcess";
    	
    }
    
    public String  FindUserCommentByGoodsId(){
    	
    	tbUserCommentInfos=tbUserCommentInfoService.findGoodsTbUserCommentInfos(goodsId);
    	
    	for(int i=0;i<tbUserCommentInfos.size();i++){
    		tbUserInfos=tbUserCommentInfoService.findUserMessage(tbUserCommentInfos.get(i).getUserId());
			if(tbUserInfos!=null){
			System.out.println("用户昵称：  "+tbUserInfos.get(0).getUserName());
			System.out.println("用户星级: "+tbUserInfos.get(0).getUserLevel());
			}
			System.out.println("评论时间：  "+tbUserCommentInfos.get(i).getUserCommentTime());
    		System.out.println("评论内容：  "+tbUserCommentInfos.get(i).getUserCommentContent());
    		System.out.println("评论星级：  "+tbUserCommentInfos.get(i).getUserCommentStar()+"星");
    		System.out.println("-----------------------------");
    		
    	}
    	
		return "succcess";
    }
    
    public String  FindUserComment(){
    	
    	tbUserCommentInfos=tbUserCommentInfoService.findTbUserCommentInfos();
    	for(TbUserCommentInfo tci : tbUserCommentInfos){
    		System.out.println(tci);
    	}
    	
		return "succcess";
    	
    }
    
    public String FindPercentUserCommentStar(){
    	double count=tbUserCommentInfoService.findGoodsTbUserCommentInfos(goodsId).size();
		System.out.println("好评数：  "+tbUserCommentInfoService.findCountUserCommentStar(goodsId));
		System.out.println("总条数：  "+count);
		System.out.println("好评率"+(tbUserCommentInfoService.findCountUserCommentStar(goodsId)/count)*100+"%");
    	return "success";
    }



	public TbUserCommentInfoService getTbUserCommentInfoService() {
		return tbUserCommentInfoService;
	}

	public void setTbUserCommentInfoService(
			TbUserCommentInfoService tbUserCommentInfoService) {
		this.tbUserCommentInfoService = tbUserCommentInfoService;
	}

	public TbUserCommentInfo getTbUserCommentInfo() {
		return tbUserCommentInfo;
	}

	public void setTbUserCommentInfo(TbUserCommentInfo tbUserCommentInfo) {
		this.tbUserCommentInfo = tbUserCommentInfo;
	}

	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}

	public String getUserCommentContent() {
		return userCommentContent;
	}

	public void setUserCommentContent(String userCommentContent) {
		this.userCommentContent = userCommentContent;
	}

	public Integer getUserCommentStar() {
		return userCommentStar;
	}

	public void setUserCommentStar(Integer userCommentStar) {
		this.userCommentStar = userCommentStar;
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public int getUserCommentId() {
		return userCommentId;
	}

	public void setUserCommentId(int userCommentId) {
		this.userCommentId = userCommentId;
	}

	public List<TbUserCommentInfo> getTbUserCommentInfos() {
		return tbUserCommentInfos;
	}

	public void setTbUserCommentInfos(List<TbUserCommentInfo> tbUserCommentInfos) {
		this.tbUserCommentInfos = tbUserCommentInfos;
	}
	
	
	
	
	

}
