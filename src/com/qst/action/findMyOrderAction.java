package com.qst.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbOrderInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbGoodsDetailInfoService;
import com.qst.service.TbGoodsImageInfoService;
import com.qst.service.TbGoodsStyleInfoService;
import com.qst.service.TbOrderInfoService;
import com.qst.vo.MyOrderListVO;

/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-13下午2:30:29
 * @version v1.0
 */
@Component
public class findMyOrderAction extends BaseAction {

	@Autowired
	private TbOrderInfoService tbOrderInfoService;

	@Autowired
	private TbGoodsStyleInfoService tbGoodsStyleInfoService;

	@Autowired
	private TbGoodsImageInfoService tbGoodsImageInfoService;
	
	@Autowired
	private TbGoodsDetailInfoService tbGoodsDetailInfoService;
	
	@Autowired
	private TbUserInfo tbUserInfo;

	public String myOrderList() {
		// 得到当前用户信息
		System.out.println("进入我的订单信息获取");
		
		System.out.println("得到当前用户信息");
		
		tbUserInfo = (TbUserInfo) session.get("user");
		
		List<String> myOrderNumberList=new ArrayList<String>();
		//得到不重复订单号
		myOrderNumberList=tbOrderInfoService.findAllOrderNumber(tbUserInfo.getUserId());
		
		//得到不重复订单号的附带信息
		List<TbOrderInfo> myOrderAllList=new ArrayList<TbOrderInfo>();
		
		for(String s:myOrderNumberList){
			
			TbOrderInfo myOrderAll=new TbOrderInfo();
			myOrderAll=tbOrderInfoService.findTbOrderInfo(s);
			
			myOrderAllList.add(myOrderAll);
			System.out.println(myOrderAll.getOrderOrderNumber());
		}	
				
		// 查到当前用户订单
		System.out.println("查到当前用户订单");
		List<TbOrderInfo> tOd = tbOrderInfoService.findAllOrderInfo2(tbUserInfo
				.getUserId());

		// 我的订单
		System.out.println("我的订单");
		List<MyOrderListVO> mOd = new ArrayList<MyOrderListVO>();

		// 对我的订单进行赋值
		System.out.println("对我的订单进行赋值");
		 
		int flag=0;
		for (TbOrderInfo list : tOd) {

			MyOrderListVO myOrderVO = new MyOrderListVO();

			myOrderVO.setOrderId(list.getOrderId());
			myOrderVO.setOrderOrderNumber(list.getOrderOrderNumber());
			myOrderVO.setOrderOrderTime(list.getOrderOrderTime());
			myOrderVO.setOrderStatus(list.getOrderStatus());

			// 查到图片路径
			System.out.println("查到图片路径");
			
			int goodsImageId = tbGoodsStyleInfoService.findImageIdStyle(list.getGoodsStyleId());//
			String goodsImagePath = tbGoodsImageInfoService.fingImagePath(goodsImageId);//

			myOrderVO.setGoodsImagePath(goodsImagePath);

			
			//查图片名称
			int goods_id=tbGoodsStyleInfoService.findGoodsIdStyle(list.getGoodsStyleId());
			TbGoodsDetailInfo tbGoodsDetailInfo =tbGoodsDetailInfoService.findTbGoodsDetailInfo(goods_id);
			myOrderVO.setGoodsStyleName(tbGoodsDetailInfo.getGoodsName());
			//查图片样式id
			
			//查金额
			myOrderVO.setGoodsTypePrice(tbGoodsDetailInfo.getGoodsPrice());
			
			myOrderVO.setGoodsStyleId(list.getGoodsStyleId());
			mOd.add(myOrderVO);
			flag=1;
		}
		
        if(flag==0)
        	{
        	session.put("myOrderAllList", null);
        	session.put("molist", null);
        	}
        else
		   {
        	session.put("myOrderAllList",myOrderAllList);
        	session.put("molist", mOd);
        	}
		return "success";
	}

	public TbOrderInfoService getTbOrderInfoService() {
		return tbOrderInfoService;
	}

	public void setTbOrderInfoService(TbOrderInfoService tbOrderInfoService) {
		this.tbOrderInfoService = tbOrderInfoService;
	}

}
