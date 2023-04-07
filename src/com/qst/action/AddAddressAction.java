package com.qst.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.entity.TbUserAddressInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbUserAddressInfoService;

/**
 * @author 杨惠(yanghui)
 * @date 2019/8/9 9:27
 * @version v1.0
 */
@Controller
public class AddAddressAction extends BaseAction{

	@Autowired
	private TbUserAddressInfo tbUserAddressInfo;
	@Autowired
	private TbUserAddressInfoService tbUserAddressInfoService;

	private List<TbUserAddressInfo> tbUserAddressInfos;
	
	private int addressId;
	private String province;
	private String city;
	
	private String area;
	
	

	public String addAddress() {
		System.out.println("添加地址");
		return "success";
	}

	//添加收货人地址
	public String addReciverAddress() {
		System.out.println("添加收货人地址");
		TbUserInfo user = (TbUserInfo)session.get("user");
		
		tbUserAddressInfo.setUserId(user.getUserId());
		
		
		tbUserAddressInfo.setAddressReciverAddress(province);
		String str = province +" " +city+" "+area;
		tbUserAddressInfo.setAddressReciverAddress(str);
		if(tbUserAddressInfo.getAddressDefaultAddress() == 10) {
			TbUserAddressInfo info = tbUserAddressInfoService.findAddressDefault();
			tbUserAddressInfoService.updateDefault(info.getAddressId(), 1);
			tbUserAddressInfo.setAddressDefaultAddress(0);
		} else {
			tbUserAddressInfo.setAddressDefaultAddress(1);
		}
		
		// 添加新地址
		tbUserAddressInfoService.addAddress(tbUserAddressInfo);
		
		System.out.println("说话地址"+tbUserAddressInfo.getAddressReciverAddress());
		return "success";
	}
	
	//?
	public String deleteAddress(){
		System.out.println("删除地址");
		tbUserAddressInfoService.delAddress(addressId);
		return "success";
	}
	
	public String toUpdate(){
		tbUserAddressInfo = tbUserAddressInfoService.findAddressByAddressId(addressId);
		return "success";
	}
	
	//?
	public String updateAddress(){
		System.out.println("修改地址");
		tbUserAddressInfoService.delAddress(addressId);
		tbUserAddressInfoService.addAddress(tbUserAddressInfo);
		return "success";
	}
	
	//显示地址列表
	public String addressList(){
		System.out.println("我的地址");
		TbUserInfo user = (TbUserInfo)session.get("user");
		
		tbUserAddressInfo.setUserId(user.getUserId());
		tbUserAddressInfos = tbUserAddressInfoService.findUserId(user.getUserId());
		return "success";
	}
	
	public String beDefault(){
		//int userId = 1;
		/*tbUserAddressInfos = tbUserAddressInfoService.findUserId(userId);
		for(TbUserAddressInfo tbUserAddressInfo:tbUserAddressInfos){
			tbUserAddressInfo.setAddressDefaultAddress(1);
		}*/
		//tbUserAddressInfo = tbUserAddressInfoService.findAddressByAddressId(addressId);
		/*System.out.println("addressId"+addressId);*/
		//tbUserAddressInfo.setAddressDefaultAddress(0);
		/*System.out.println("姓名"+tbUserAddressInfo.getAddressReciverName());
		System.out.println("地址"+tbUserAddressInfo.getAddressDefaultAddress());*/
		//tbUserAddressInfoService.updateAddress(tbUserAddressInfo);
		
		
		
		TbUserAddressInfo address = tbUserAddressInfoService.findAddressDefault();
		tbUserAddressInfoService.updateDefault(address.getAddressId(), 1);
		
		tbUserAddressInfoService.updateDefault(addressId, 0);
		System.out.println("修改默认地址成功");
		
		return "success";
	}

	public TbUserAddressInfo getTbUserAddressInfo() {
		return tbUserAddressInfo;
	}

	public void setTbUserAddressInfo(TbUserAddressInfo tbUserAddressInfo) {
		this.tbUserAddressInfo = tbUserAddressInfo;
	}

	public TbUserAddressInfoService getTbUserAddressInfoService() {
		return tbUserAddressInfoService;
	}

	public void setTbUserAddressInfoService(
			TbUserAddressInfoService tbUserAddressInfoService) {
		this.tbUserAddressInfoService = tbUserAddressInfoService;
	}

	public List<TbUserAddressInfo> getTbUserAddressInfos() {
		return tbUserAddressInfos;
	}

	public void setTbUserAddressInfos(List<TbUserAddressInfo> tbUserAddressInfos) {
		this.tbUserAddressInfos = tbUserAddressInfos;
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	
	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}


}
