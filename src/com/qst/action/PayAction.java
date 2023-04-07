package com.qst.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbOrderInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbGoodsDetailInfoService;
import com.qst.service.TbGoodsStyleInfoService;
import com.qst.service.TbOrderInfoService;
import com.qst.service.TbUserInfoService;

/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-12下午9:48:32
 * @version v1.0
 */
@Repository
public class PayAction extends BaseAction{
	private String out_trade_no;//商户订单号
	private String trade_no;//支付宝交易号
	private String total_amount;
	@Autowired
	private TbUserInfo tbUserInfo;
	
	@Autowired
	TbGoodsStyleInfo tbGoodsStyleInfo;
	
	@Autowired
	private TbGoodsDetailInfo tbGoodsDetailInfo;
	
	@Autowired
	private TbOrderInfo tbOrderInfo;
	
	@Autowired
	private TbOrderInfoService tbOrderInfoService;
	
	@Autowired
	private TbGoodsStyleInfoService tbGoodsStyleInfoService;
	
	@Autowired
	private TbUserInfoService tbUserInfoService;
	
	@Autowired
	private TbGoodsDetailInfoService tbGoodsDetailInfoService;
	
	
	/**
	 * 支付成功
	 * */
	public String paysuccess(){
		
		System.out.println("进支付成功处理数据处理");
		
		tbUserInfo =(TbUserInfo) session.get("user");
		
		//修改积分
		double i=Double.parseDouble(total_amount);
		
		tbUserInfo.setUserLevel(tbUserInfo.getUserLevel()+(int)i);
	
		tbUserInfoService.updateLevel(tbUserInfo);

		session.put("user", tbUserInfo);
	
		System.out.println("订单号+"+out_trade_no);
		//修改销量   &&改变库存
		
		  //查出这个订单下的所有商品
		List<TbOrderInfo> myThisOrderList=tbOrderInfoService.findTbThisOrderInfo(out_trade_no);
		 //得到商品id和售出数据来改变该商品的销量
		for(TbOrderInfo t:myThisOrderList){
			
			System.out.println("商品样式id"+t.getGoodsStyleId());
			int goodStyleId=t.getGoodsStyleId();//商品样式id
			
			int goodNumber=t.getOrderGoodsNumber();//卖出数量
			
			int goodId=tbGoodsStyleInfoService.findGoodsIdStyle(goodStyleId);//商品id
			
			tbGoodsDetailInfo=tbGoodsDetailInfoService.findTbGoodsDetailInfo(goodId);//这个商品的所有信息
			
			System.out.println("sales+"+tbGoodsDetailInfo.getGoodsSales()+goodNumber);
			
			tbGoodsDetailInfo.setGoodsSales(tbGoodsDetailInfo.getGoodsSales()+goodNumber);
			tbGoodsDetailInfoService.updateTbGoodsDetailInfo2(tbGoodsDetailInfo);
			//修改销量
			
			tbGoodsStyleInfo=tbGoodsStyleInfoService.findGoodsStyleInfoService(goodStyleId);
			tbGoodsStyleInfo.setGoodsStyleStock(tbGoodsStyleInfo.getGoodsStyleStock()-goodNumber);
			tbGoodsStyleInfoService.updateStock(tbGoodsStyleInfo);
			//更新库存
	
			t.setOrderStatus(1);
			tbOrderInfoService.updateStatus(t);
			//改变订单状态
		}	
	
		return "success";
	}
	
	
	public String getOut_trade_no() {
		return out_trade_no;
	}
	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}
	public String getTrade_no() {
		return trade_no;
	}
	public void setTrade_no(String trade_no) {
		this.trade_no = trade_no;
	}
	public String getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(String total_amount) {
		this.total_amount = total_amount;
	}


	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}


	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}


	public TbUserInfoService getTbUserInfoService() {
		return tbUserInfoService;
	}


	public void setTbUserInfoService(TbUserInfoService tbUserInfoService) {
		this.tbUserInfoService = tbUserInfoService;
	}


	public TbGoodsDetailInfo getTbGoodsDetailInfo() {
		return tbGoodsDetailInfo;
	}


	public void setTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		this.tbGoodsDetailInfo = tbGoodsDetailInfo;
	}


	public TbOrderInfo getTbOrderInfo() {
		return tbOrderInfo;
	}


	public void setTbOrderInfo(TbOrderInfo tbOrderInfo) {
		this.tbOrderInfo = tbOrderInfo;
	}


	public TbOrderInfoService getTbOrderInfoService() {
		return tbOrderInfoService;
	}


	public void setTbOrderInfoService(TbOrderInfoService tbOrderInfoService) {
		this.tbOrderInfoService = tbOrderInfoService;
	}


	public TbGoodsStyleInfoService getTbGoodsStyleInfoService() {
		return tbGoodsStyleInfoService;
	}


	public void setTbGoodsStyleInfoService(
			TbGoodsStyleInfoService tbGoodsStyleInfoService) {
		this.tbGoodsStyleInfoService = tbGoodsStyleInfoService;
	}


	public TbGoodsDetailInfoService getTbGoodsDetailInfoService() {
		return tbGoodsDetailInfoService;
	}


	public void setTbGoodsDetailInfoService(
			TbGoodsDetailInfoService tbGoodsDetailInfoService) {
		this.tbGoodsDetailInfoService = tbGoodsDetailInfoService;
	}

}
