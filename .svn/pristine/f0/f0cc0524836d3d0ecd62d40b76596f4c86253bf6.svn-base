package com.qst.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import xyz.peter.UpLoadImageBed;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbGoodsTypeInfo;
import com.qst.service.TbGoodsDetailInfoService;
import com.qst.service.TbStyleService;

@Repository
public class UpdateGoodsInfo {
	
	@Resource
	private TbStyleService tbStyleService;
	@Resource
	private TbGoodsDetailInfoService tbGoodsDetailInfoService;


	private TbGoodsDetailInfo tbGoodsDetailInfo;

	private TbGoodsTypeInfo tbGoodsTypeInfo;
	
	private List<TbGoodsStyleInfo> tbGoodsStyleInfo;
	
	

	private int goodsId;
	
	
	public String updateGoodsDetailInfo() throws FileNotFoundException {
		
		TbGoodsDetailInfo detail = tbGoodsDetailInfoService.findTbGoodsDetailInfo(goodsId);
		System.out.println(detail.toString());
		int[] a = {goodsId};
		tbGoodsDetailInfo.setGoodsSales(detail.getGoodsSales());
		tbGoodsDetailInfo.setGoodsStatus(detail.getGoodsStatus());
		tbGoodsDetailInfo.setGoodsTime(detail.getGoodsTime());
		tbGoodsDetailInfo.setGoodsId(detail.getGoodsId());
		System.out.println("执行修改" +detail.toString());
		//传入类型
		tbGoodsTypeInfo.setGoodsTypePrice(this.priceNum(tbGoodsDetailInfo.getGoodsPrice()));
		tbGoodsDetailInfo.setTbGoodsTypeInfo(tbGoodsTypeInfo);
		
		int index = 0;
		for (TbGoodsStyleInfo info : tbGoodsStyleInfo) {
			
			TbGoodsImageInfo tbGoodsImageInfo = tbStyleService.findImageInfo(info.getGoodsImageId());
			info.setTbGoodsImageInfo(tbGoodsImageInfo);
			System.out.println("商品id" +tbGoodsDetailInfo.getGoodsId());
			info.setGoodsId(tbGoodsDetailInfo.getGoodsId());
			System.out.println("样式id" +info.getGoodsStyleId());
			System.out.println("样式内容" +info.toString());
			tbStyleService.deleteStyle(info.getGoodsStyleId());
		}
		Set<TbGoodsStyleInfo> styles = new HashSet<TbGoodsStyleInfo>(tbGoodsStyleInfo) ;
		
		tbGoodsDetailInfo.setTbGoodsStyleInfo(styles);
		
		tbGoodsDetailInfoService.updateTbGoodsDetailInfo(tbGoodsDetailInfo);
		
		System.out.println("修改成功");
		return "updateGoodsDetail";
	}
	
	
	


	/**
	 * @return
	 * 回显商品信息
	 */
	public String updateInGoodsInfo() {
		
		System.out.println("待修改的id" +goodsId);
		tbGoodsDetailInfo = tbGoodsDetailInfoService.findTbGoodsDetailInfo(goodsId);
		if(tbGoodsDetailInfo == null) {
			System.out.println("商品未获取到信息");
		}
		else {
		System.out.println(tbGoodsDetailInfo.toString());
		}
		return "updateInGoodsInfo";
	}

	
	
	public String priceNum(Double double1) {
		if (double1 <= 100) {
			return "1";
		} else if (double1 <= 200) {
			return "2";
		} else if (double1 <= 300) {
			return "3";
		} else if (double1 <= 500) {
			return "4";
		} else if(double1 > 500) {
			return "5";
		}
		return "0";
	}

	public TbGoodsDetailInfo getTbGoodsDetailInfo() {
		return tbGoodsDetailInfo;
	}


	public void setTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		this.tbGoodsDetailInfo = tbGoodsDetailInfo;
	}


	public TbGoodsTypeInfo getTbGoodsTypeInfo() {
		return tbGoodsTypeInfo;
	}


	public void setTbGoodsTypeInfo(TbGoodsTypeInfo tbGoodsTypeInfo) {
		this.tbGoodsTypeInfo = tbGoodsTypeInfo;
	}


	public int getGoodsId() {
		return goodsId;
	}


	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}


	public List<TbGoodsStyleInfo> getTbGoodsStyleInfo() {
		return tbGoodsStyleInfo;
	}


	public void setTbGoodsStyleInfo(List<TbGoodsStyleInfo> tbGoodsStyleInfo) {
		this.tbGoodsStyleInfo = tbGoodsStyleInfo;
	}

	public TbStyleService getTbStyleService() {
		return tbStyleService;
	}





	public void setTbStyleService(TbStyleService tbStyleService) {
		this.tbStyleService = tbStyleService;
	}


}
