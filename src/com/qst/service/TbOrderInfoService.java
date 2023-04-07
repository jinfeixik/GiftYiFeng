package com.qst.service;


import java.util.List;
import java.util.Set;

import com.qst.entity.TbOrderInfo;
import com.qst.vo.MyOrderVO;

public interface TbOrderInfoService {

	public void add(TbOrderInfo tbOrderInfo);
	
	public String createOrderNum();
	
	public String createOrderTime() ;
	
	public  List<TbOrderInfo> findAllOrderInfo2(int userId) ;
	
	public   List<MyOrderVO>  findAllOrderInfo(int userId);

	public TbOrderInfo findTbOrderInfo(String out_trade_no);

	public void updateTbOrderInfo(TbOrderInfo tbOrderInfo);

	public List<TbOrderInfo> findTbThisOrderInfo(String out_trade_no);

	public List<String> findAllOrderNumber(Integer userId);

	public void updateStatus(TbOrderInfo t);

	public TbOrderInfo findTbOrderInfo(String orderNumber, int styleId);

	
	public List<TbOrderInfo> findAllOrderInfos();
	public List<TbOrderInfo> findPartOrderInfos(List<Integer> id);
	

}
