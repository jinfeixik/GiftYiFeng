package com.qst.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbOrderInfo;
import com.qst.entity.TbUserAddressInfo;
import com.qst.service.TbGoodsDetailInfoService;
import com.qst.service.TbGoodsStyleInfoService;
import com.qst.service.TbOrderInfoService;
import com.qst.service.TbUserAddressInfoService;
import com.qst.vo.OrderDetailVO;

@Repository
public class OrderDetailAction extends BaseAction{
	private String orderNumber;
	private int styleId;
	private String imagePath;
	
	@Autowired
	private TbUserAddressInfoService tbUserAddressInfoService;
	@Autowired
	private TbGoodsStyleInfoService tbGoodsStyleInfoService;
	@Autowired 
	private TbGoodsDetailInfoService tbGoodsDetailInfoService;
	
	@Autowired
	private TbOrderInfoService tbOrderInfoService;
	
	private TbUserAddressInfo tbUserAddressInfo;
	
	
	private TbGoodsDetailInfo tbGoodsDetailInfo;

	
	private TbOrderInfo tbOrderInfo;
	
	
	
	private TbGoodsStyleInfo tbGoodsStyleInfo;
	
	
	
public String orderDetail(){
	
	OrderDetailVO orderDetailVO = new OrderDetailVO();
	
	System.out.println("进入OrderDetail");
	
	//订单信息
	tbOrderInfo=tbOrderInfoService.findTbOrderInfo(orderNumber,styleId);
	
	//查款式信息
	tbGoodsStyleInfo=tbGoodsStyleInfoService.findStyle(styleId);

	//名字和钱
	tbGoodsDetailInfo=tbGoodsDetailInfoService.findTbGoodsDetailInfo(tbGoodsStyleInfo.getGoodsId());

	//地址
	tbUserAddressInfo=tbUserAddressInfoService.findAddressByAddressId(tbOrderInfo.getAddressId());
	
	
	orderDetailVO.setGoodsImagePath(imagePath);
	
	orderDetailVO.setGoodsName(tbGoodsDetailInfo.getGoodsName());
	orderDetailVO.setGoodsPrice(tbGoodsDetailInfo.getGoodsPrice());
	orderDetailVO.setGoodsStyleName(tbGoodsStyleInfo.getGoodsStyleName());
	orderDetailVO.setOrderGoodsNumber(tbOrderInfo.getOrderGoodsNumber());
	orderDetailVO.setOrderOrderNumber(orderNumber);
	orderDetailVO.setOrderOrderTime(tbOrderInfo.getOrderOrderTime());
	orderDetailVO.setTbUserAddressInfo(tbUserAddressInfo);

	
	session.put("orderDetail",orderDetailVO);
	return "success";
}

public String getOrderNumber() {
	return orderNumber;
}

public void setOrderNumber(String orderNumber) {
	this.orderNumber = orderNumber;
}


public int getStyleId() {
	return styleId;
}

public void setStyleId(int styleId) {
	this.styleId = styleId;
}

public String getImagePath() {
	return imagePath;
}

public void setImagePath(String imagePath) {
	this.imagePath = imagePath;
}


}
