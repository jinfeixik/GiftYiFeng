package com.qst.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbGoodsDetailInfoService;
import com.qst.service.TbGoodsStyleInfoService;
import com.qst.service.TbUserCommentInfoService;

/**
 * 
 * @author 李阳liyang
 * @date 2019-8-13上午10:27:09
 * @version v1.0
 */

@Repository
public class FindGoodsDetailAction {

	@Resource
	private TbGoodsDetailInfoService tbGoodsDetailInfoService;

	@Resource
	private TbUserCommentInfoService tbUserCommentInfoService;

	@Resource
	private TbGoodsStyleInfoService tbGoodsStyleInfoService;

	private TbGoodsDetailInfo tbGoodsDetailInfo;

	private TbUserCommentInfo tbUserCommentInfo;

	private int goodsId;

	private JSONObject goods_info;

	private List<TbUserCommentInfo> tbUserCommentInfos = new ArrayList<TbUserCommentInfo>();

	private List<TbGoodsStyleInfo> tbGoodsStyleInfos = new ArrayList<TbGoodsStyleInfo>();

	private List<TbGoodsImageInfo> TbGoodsImageInfos = new ArrayList<TbGoodsImageInfo>();

	public String findGoodsDetail() {
		// 商品详情信息
		tbGoodsDetailInfo = tbGoodsDetailInfoService
				.findTbGoodsDetailInfo(goodsId);
		System.out.println("goodsId" + goodsId);
		// 评论信息
		tbUserCommentInfos = tbUserCommentInfoService
				.findGoodsTbUserCommentInfos(goodsId);

		// 样式信息
		tbGoodsStyleInfos = tbGoodsStyleInfoService.findGoodStyleInfo(goodsId);

		// 把商品详细信息和评论信息放入json
		goods_info = new JSONObject();
		goods_info.put("id", tbGoodsDetailInfo.getGoodsId());
		goods_info.put("name", tbGoodsDetailInfo.getGoodsName());
		goods_info.put("discreable", tbGoodsDetailInfo.getGoodsDiscreable());
		goods_info.put("price", tbGoodsDetailInfo.getGoodsPrice());

		JSONArray specifiction = new JSONArray();
		String [] arr = tbGoodsDetailInfo.getGoodsSpecifiction().split("\\s+");
		for(String ss : arr){
			JSONObject jObject = new JSONObject();
			jObject.put("info", ss);
			specifiction.add(jObject);
		}
		goods_info.put("specifiction", specifiction);

		TbGoodsImageInfos.clear();
		JSONArray style_info = new JSONArray();
		for (int i = 0; i < tbGoodsStyleInfos.size(); i++) {
			JSONObject jObject = new JSONObject();
			// 样式名
			tbGoodsStyleInfos.get(i).getGoodsStyleName();
			jObject.put("id", tbGoodsStyleInfos.get(i).getGoodsStyleId());
			jObject.put("name", tbGoodsStyleInfos.get(i).getGoodsStyleName());
			System.out.println(tbGoodsStyleInfos.get(i).getGoodsStyleName());
			// 图片信息
			TbGoodsImageInfos.addAll(tbGoodsStyleInfoService
					.findGoodsImageInfo(tbGoodsStyleInfos.get(i)
							.getGoodsImageId()));
			jObject.put("image", TbGoodsImageInfos.get(i).getGoodsImagePath());
			System.out.println(TbGoodsImageInfos.get(i).getGoodsImagePath());

			style_info.add(jObject);
		}
		goods_info.put("style_info", style_info);
		
		System.out.println("tbUserCommentInfos.size() "+tbUserCommentInfos.size());
		JSONArray comment_info = new JSONArray();
		for (int i = 0; i < tbUserCommentInfos.size(); i++) {
			JSONObject jObject = new JSONObject();
			jObject.put("comment", tbUserCommentInfos.get(i).getUserCommentContent());
			jObject.put("time", tbUserCommentInfos.get(i).getUserCommentTime());
			jObject.put("star", tbUserCommentInfos.get(i).getUserCommentStar());
			List<TbUserInfo> tbUserInfos = new ArrayList<TbUserInfo>();
			tbUserInfos = tbUserCommentInfoService.findUserMessage(tbUserCommentInfos.get(i).getUserId());
			jObject.put("name", tbUserInfos.get(0).getUserName());
			jObject.put("level", tbUserInfos.get(0).getUserLevel().toString());
			comment_info.add(jObject);
		}
		goods_info.put("comment_info", comment_info);

		return "success";
	}

	public TbGoodsDetailInfoService getTbGoodsDetailInfoService() {
		return tbGoodsDetailInfoService;
	}

	public void setTbGoodsDetailInfoService(
			TbGoodsDetailInfoService tbGoodsDetailInfoService) {
		this.tbGoodsDetailInfoService = tbGoodsDetailInfoService;
	}

	public TbUserCommentInfoService getTbUserCommentInfoService() {
		return tbUserCommentInfoService;
	}

	public void setTbUserCommentInfoService(
			TbUserCommentInfoService tbUserCommentInfoService) {
		this.tbUserCommentInfoService = tbUserCommentInfoService;
	}

	public TbGoodsStyleInfoService getTbGoodsStyleInfoService() {
		return tbGoodsStyleInfoService;
	}

	public void setTbGoodsStyleInfoService(
			TbGoodsStyleInfoService tbGoodsStyleInfoService) {
		this.tbGoodsStyleInfoService = tbGoodsStyleInfoService;
	}

	public TbGoodsDetailInfo getTbGoodsDetailInfo() {
		return tbGoodsDetailInfo;
	}

	public void setTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		this.tbGoodsDetailInfo = tbGoodsDetailInfo;
	}

	public TbUserCommentInfo getTbUserCommentInfo() {
		return tbUserCommentInfo;
	}

	public void setTbUserCommentInfo(TbUserCommentInfo tbUserCommentInfo) {
		this.tbUserCommentInfo = tbUserCommentInfo;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public JSONObject getGoods_info() {
		return goods_info;
	}

	public void setGoods_info(JSONObject goods_info) {
		this.goods_info = goods_info;
	}

	public List<TbUserCommentInfo> getTbUserCommentInfos() {
		return tbUserCommentInfos;
	}

	public void setTbUserCommentInfos(List<TbUserCommentInfo> tbUserCommentInfos) {
		this.tbUserCommentInfos = tbUserCommentInfos;
	}

	public List<TbGoodsStyleInfo> getTbGoodsStyleInfos() {
		return tbGoodsStyleInfos;
	}

	public void setTbGoodsStyleInfos(List<TbGoodsStyleInfo> tbGoodsStyleInfos) {
		this.tbGoodsStyleInfos = tbGoodsStyleInfos;
	}

	public List<TbGoodsImageInfo> getTbGoodsImageInfos() {
		return TbGoodsImageInfos;
	}

	public void setTbGoodsImageInfos(List<TbGoodsImageInfo> tbGoodsImageInfos) {
		TbGoodsImageInfos = tbGoodsImageInfos;
	}

}
