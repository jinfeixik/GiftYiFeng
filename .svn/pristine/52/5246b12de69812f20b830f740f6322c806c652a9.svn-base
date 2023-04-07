package com.qst.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import xyz.peter.UpLoadImageBed;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbGoodsTypeInfo;
import com.qst.service.TbGoodsDetailInfoService;
import com.qst.vo.GoodsListMassageVo;

/**
 * @author 袁滢yuanying
 * @date 2019-8-7下午8:18:35
 * @version v1.0
 */
@Repository
@Scope("prototype")
public class ManagerGoodsAction {

	@Resource
	private TbGoodsDetailInfoService tbGoodsDetailInfoService;

	private TbGoodsDetailInfo tbGoodsDetailInfo;

	private TbGoodsTypeInfo tbGoodsTypeInfo;
	
	private List<TbGoodsDetailInfo> tbGoodsDetailInfos;
	
	private List<GoodsListMassageVo> goodsListMassageVo;
	//图片
		private List<File> myFile;
		private List<String> myFileFileName = new ArrayList<String>();//文件名

	private int goodsId;
	private int[] goodIds;//多选用的id
	
	//商品状态 0为上架，1为下架
	private int status;
	

	public String findGoods() {

		goodsListMassageVo = tbGoodsDetailInfoService.findTbGoodsDetailInfos();
		return "findGoods";
	}

	/**
	 * @return 删除单个商品
	 */
	public String deleteGoodsOne() {

		int[] goodsIdOne = { goodsId };
		tbGoodsDetailInfoService.delectTbGoodsDetailInfo(goodsIdOne);
		return "deleteGoodsOne";
	}

	/**
	 * @return 删除商品（多个商品）
	 */
	public String deleteGoods() {

		System.out.println("进入删除");

		for (int i = 0; i < goodIds.length; i++) {
			System.out.println("id" + i + goodIds[i]);
		}

		tbGoodsDetailInfoService.delectTbGoodsDetailInfo(goodIds);
		System.out.println("删除成功");

		return "deleteGoods";
	}

	
	public String updateGoodsStatus() {
		
		System.out.println("待修改状态" +status);
		tbGoodsDetailInfoService.statusGoods(status, goodsId);
		
		
		return "updateGoodsStatus";
		
		
	}
	
	
	
	public TbGoodsDetailInfo getTbGoodsDetailInfo() {
		return tbGoodsDetailInfo;
	}

	public void setTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		this.tbGoodsDetailInfo = tbGoodsDetailInfo;
	}

	public TbGoodsDetailInfoService getTbGoodsDetailInfoService() {
		return tbGoodsDetailInfoService;
	}

	public void setTbGoodsDetailInfoService(
			TbGoodsDetailInfoService tbGoodsDetailInfoService) {
		this.tbGoodsDetailInfoService = tbGoodsDetailInfoService;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public List<TbGoodsDetailInfo> getTbGoodsDetailInfos() {
		return tbGoodsDetailInfos;
	}

	public void setTbGoodsDetailInfos(List<TbGoodsDetailInfo> tbGoodsDetailInfos) {
		this.tbGoodsDetailInfos = tbGoodsDetailInfos;
	}

	public int[] getGoodIds() {
		return goodIds;
	}

	public void setGoodIds(int[] goodIds) {
		this.goodIds = goodIds;
	}

	public TbGoodsTypeInfo getTbGoodsTypeInfo() {
		return tbGoodsTypeInfo;
	}

	public void setTbGoodsTypeInfo(TbGoodsTypeInfo tbGoodsTypeInfo) {
		this.tbGoodsTypeInfo = tbGoodsTypeInfo;
	}
	

	public List<File> getMyFile() {
			return myFile;
		}

		public void setMyFile(List<File> myFile) {
			this.myFile = myFile;
		}

		public List<String> getMyFileFileName() {
			return myFileFileName;
		}

		public void setMyFileFileName(List<String> myFileFileName) {
			this.myFileFileName = myFileFileName;
		}

		public List<GoodsListMassageVo> getGoodsListMassageVo() {
			return goodsListMassageVo;
		}

		public void setGoodsListMassageVo(List<GoodsListMassageVo> goodsListMassageVo) {
			this.goodsListMassageVo = goodsListMassageVo;
		}
		
		

		public int getStatus() {
			return status;
		}

		public void setStatus(int status) {
			this.status = status;
		}


		
}
