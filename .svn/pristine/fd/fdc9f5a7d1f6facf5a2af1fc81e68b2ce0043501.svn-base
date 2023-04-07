package com.qst.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.impl.TbGoodsDetailInfoServiceImpl;
import com.qst.service.impl.TbGoodsStyleInfoServiceImpl;
import com.qst.service.impl.TbUserCommentInfoServiceImpl;

public class TestGoods {
	public static void main(String[] args) {
		String path = "applicationContext.xml";
		ApplicationContext ac = new ClassPathXmlApplicationContext(path);
		
		TbUserCommentInfoServiceImpl tgd = (TbUserCommentInfoServiceImpl)ac.getBean("tbUserCommentInfoServiceImpl");
		TbGoodsDetailInfoServiceImpl tgis =(TbGoodsDetailInfoServiceImpl)ac.getBean("tbGoodsDetailInfoServiceImpl");
		TbGoodsStyleInfoServiceImpl tsis =(TbGoodsStyleInfoServiceImpl)ac.getBean("tbGoodsStyleInfoServiceImpl");
		
		List<TbUserCommentInfo> tbUserCommentInfos = new ArrayList<TbUserCommentInfo>();
		List<TbGoodsStyleInfo> tbGoodsStyleInfos = new ArrayList<TbGoodsStyleInfo>();
		List<TbUserInfo> tbUserInfo=new ArrayList<TbUserInfo>();
		List<TbGoodsImageInfo> tbGoodsImageInfos=new ArrayList<TbGoodsImageInfo>();
		
		int goodsId=110;
		TbGoodsDetailInfo   tbGoodsDetailInfo=new TbGoodsDetailInfo();
	    //商品详情信息
		tbGoodsDetailInfo=tgis.findTbGoodsDetailInfo(goodsId);
		System.out.println("商品标题：  "+tbGoodsDetailInfo.getGoodsName());	
		//评论信息
		tbUserCommentInfos=tgd.findGoodsTbUserCommentInfos(goodsId);
		
		for(int i=0;i<tbUserCommentInfos.size();i++){
			System.out.println("商品评论：  "+tbUserCommentInfos.get(i).getUserCommentContent());
		}
			
	    //样式信息
		tbGoodsStyleInfos = tsis.findGoodStyleInfo(goodsId);
		
			
		for(int i=0;i<tbGoodsStyleInfos.size();i++){
		System.out.println(tbGoodsStyleInfos.get(i).getGoodsStyleName());
				
		//图片信息
		tbGoodsImageInfos.addAll( tsis.findGoodsImageInfo(tbGoodsStyleInfos.get(i).getGoodsImageId()));
		}
		System.out.println("size:  "+tbGoodsImageInfos.size());
		for(int j=0;j<tbGoodsImageInfos.size();j++){
			System.out.println(tbGoodsStyleInfos.get(j).getGoodsStyleName()+tbGoodsImageInfos.get(j).getGoodsImagePath());
		}
				
	    }
	}


