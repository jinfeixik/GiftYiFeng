package com.qst.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.dao.TbOrderInfoDao;
import com.qst.dao.impl.TbOrderInfoDaoImpl;
import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbOrderInfo;


@Repository
public class AddOrderAction {
	@Autowired
	private TbOrderInfo  tbOrderInfo;	
	public String AddOrder() {
    TbOrderInfoDaoImpl toi=new TbOrderInfoDaoImpl();
    toi.addOrderInfo(tbOrderInfo);
	return "success";
	}
	public TbOrderInfo getTbOrderInfo() {
		return tbOrderInfo;
	}

	public void setTbOrderInfo(TbOrderInfo tbOrderInfo) {
		this.tbOrderInfo = tbOrderInfo;
	}
	
}
