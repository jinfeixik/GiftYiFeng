package com.qst.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbOrderInfo;
import com.qst.entity.TbShoppingCar;
import com.qst.entity.TbUserAddressInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbOrderInfoService;
import com.qst.service.TbShoppingCarService;
import com.qst.service.TbGoodsStyleInfoService;
import com.qst.service.TbUserAddressInfoService;
import com.qst.vo.MyOrderVO;

/**
 * @author 杨惠(yanghui)
 * @date 2019/8/9 9:27
 * @version v1.0
 */
@Controller
public class OrderInfoAction extends BaseAction {

	@Autowired
	private TbOrderInfoService tbOrderInfoService;

	@Autowired
	private TbUserAddressInfoService tbUserAddressInfoService;
	@Autowired
	private TbGoodsStyleInfoService tbGoodsStyleInfoService;
	@Autowired
	private TbShoppingCarService tbShoppingCarService;
	

	private TbOrderInfo tbOrderInfo = new TbOrderInfo();

	private TbUserAddressInfo tbUserAddressInfo;
	private List<TbUserAddressInfo> userAddresses;
	private List<TbOrderInfo> orders;
	
	private List<MyOrderVO> myOrderVOs;
	
	private List<TbShoppingCar> cars;
	private TbGoodsStyleInfo style;
	

	private int userId;

	private int orderDistrabutionMethod = 0;

	private int totalNumber;
	
	private String orderOrderNumber;
	
	private String orderOrderTime;

	private double allAmount;

	private int orderStatus = 0;
	
	/*public String addOrder(){
	 return "success";
	}*/
	

	// 填写订单（添加订单）
	public String writeOrderInfo() {
		
		TbUserInfo userInfo =new TbUserInfo();
		userInfo=(TbUserInfo) session.get("user");
		/*System.out.println("hhh哈哈哈哈"+userInfo);*/
		// 查询用户的地址信息
		userAddresses = tbUserAddressInfoService.findUserId(userInfo.getUserId());
		System.out.println("用户地址信息"+userAddresses.size());
		// 查询购物车信息
		cars = tbShoppingCarService.findTbShoppingCar(userInfo.getUserId());
		System.out.println("购物车商品信息"+cars.size());
		
        
		/*for(int j=0 ;j<cars.size();j++){
			int[] goodsStyleIds  = new int[cars.size()];
			goodsStyleIds[j] = cars.get(j).getGoodsStyleId();
			System.out.println("样式id"+goodsStyleIds[j]);
		}
		*/
		// 配送方式
		/*System.out.println("配送方式");
		System.out.println(orderDistrabutionMethod);*/
		System.out.println("hhhhh自己哦哦"+tbOrderInfo);
		System.out.println("???"+orderDistrabutionMethod);
		System.out.println(orderDistrabutionMethod);
		
		tbOrderInfo.setOrderDistrabutionMethod(orderDistrabutionMethod);
       
		// 调用随机产生订单号函数
		orderOrderNumber = tbOrderInfoService.createOrderNum();
		tbOrderInfo.setOrderOrderNumber(orderOrderNumber);

		// 调用当前时间函数
		orderOrderTime = tbOrderInfoService.createOrderTime();
		tbOrderInfo.setOrderOrderTime(orderOrderTime);
		allAmount = 0;
		HttpServletRequest request = ServletActionContext.getRequest();

		JSONArray jArray = new JSONArray();
		for (int i = 0; i < cars.size(); i++) {
			JSONObject jObject = new JSONObject();
			// 单项商品总额
			jObject.put("id", cars.get(i).getShoppingCarAmount());
			// 商品名称
			jObject.put("name",cars.get(i).getTbGoodsStyleInfo().getTbGoodsDetailInfo().getGoodsName());
			// 商品图片
			jObject.put("image", cars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsImageInfo().getGoodsImagePath());
			// 商品单价
			jObject.put("price", cars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsPrice());
			// 商品数量
			jObject.put("number", cars.get(i).getShoppingCarGoodsNumber());
			// 商品库存
			jObject.put("stock", cars.get(i).getTbGoodsStyleInfo()
					.getGoodsStyleStock());
			// 商品件数
			jObject.put("goodsNum", totalNumber);
			// 商品小计
			jObject.put("amount", cars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsPrice()*cars.get(i).getShoppingCarGoodsNumber());
			//jObject.put("amount", cars.get(i).getShoppingCarAmount());
			// 购物车总金额
			allAmount = allAmount
					+ cars.get(i).getShoppingCarGoodsNumber()
					* cars.get(i).getTbGoodsStyleInfo().getTbGoodsDetailInfo()
							.getGoodsPrice();
			System.out.println("共计" + allAmount);
			jObject.put("allAmount", allAmount);
			jArray.add(jObject);
		}
		totalNumber = tbShoppingCarService.findShoppingCarTotalNumber(userInfo.getUserId());
		System.out.println(totalNumber + "件");

		// 订单总金额
		tbOrderInfo.setOrderAmount(allAmount);
		// 订单商品件数
		tbOrderInfo.setOrderGoodsNumber(totalNumber);
		request.setAttribute("cars", jArray);
		// 订单状态默认为未支付
		tbOrderInfo.setOrderStatus(orderStatus);
		
		tbOrderInfo.setUserId(userInfo.getUserId());
		
		for (TbShoppingCar car : cars) {
			for (TbUserAddressInfo userAddress : userAddresses) {
				tbOrderInfo.setAddressId(userAddress.getAddressId());
			}
			tbOrderInfo.setGoodsStyleId(car.getGoodsStyleId());
			System.out.println("样式id："+car.getGoodsStyleId());
			tbOrderInfoService.add(tbOrderInfo);
		}
		
		
		/*tbOrderInfoService.add(tbOrderInfo);*/
		return "success";
	}

	// 订单支付
	public String payOrder() {
		System.out.println("订单支付");
		// 通过订单表中的地址id查找收货人地址信息
		tbUserAddressInfo = tbUserAddressInfoService
				.findAddressByAddressId(tbOrderInfo.getAddressId());
		System.out.println("收货人地址"
				+ tbUserAddressInfo.getAddressReciverAddress());
		return "success";
	}

	// 我的订单
	public String myOrder() {
		TbUserInfo tbUserInfo=new TbUserInfo();
		tbUserInfo=(TbUserInfo) session.get("user");
		orders = tbOrderInfoService.findAllOrderInfo2(tbUserInfo.getUserId());
		//myOrderVOs = tbOrderInfoService.findAllOrderInfo(1);
		HttpServletRequest request = ServletActionContext.getRequest();
		JSONArray jsonArray = new JSONArray();
		for (int i = 0; i < orders.size(); i++) {

			JSONObject object = new JSONObject();
			// 订单号
			object.put("orderNum",orders.get(i).getOrderOrderNumber());
			// 订单创建时间
			object.put("orderTime",orders.get(i).getOrderOrderTime());
			// 每个订单总额
			object.put("amount", orders.get(i).getOrderAmount());
			// 订单状态
			object.put("status", orders.get(i).getOrderStatus());
			// 商品名称
			int goodsStyleId = cars.get(i).getGoodsStyleId();
			System.out.println("购物车id"+goodsStyleId);
			//根据购物车id查询样式信息
			style =  tbGoodsStyleInfoService.findGoodsStyle(goodsStyleId);
			System.out.println("样式名称"+style.getGoodsStyleName());
			System.out.println("商品名称"+style.getTbGoodsDetailInfo().getGoodsName());
			object.put("name",style.getTbGoodsDetailInfo().getGoodsName());
			/*for (MyOrderVO myOrder : myOrderVOs) {
				System.out.println(myOrder.getGoodsImagePath());
				// 商品图片
				object.put("image", myOrder.getGoodsImagePath());
				// 商品名称和单价
				object.put("nameAndPrice", myOrder.getGoodsMessage());
			}*/
			jsonArray.add(object);
		}

		request.setAttribute("orders", jsonArray);
		return "success";
	}
	
	
	
	public String findOrderAllInfo() {
		
		orders = tbOrderInfoService.findAllOrderInfos();
		System.out.println("订单长度" +orders.size());
		
		return "success";
	}
	
	

	public TbUserAddressInfo getTbUserAddressInfo() {
		return tbUserAddressInfo;
	}

	public void setTbUserAddressInfo(TbUserAddressInfo tbUserAddressInfo) {
		this.tbUserAddressInfo = tbUserAddressInfo;
	}

	public List<TbUserAddressInfo> getUserAddresses() {
		return userAddresses;
	}

	public void setUserAddresses(List<TbUserAddressInfo> userAddresses) {
		this.userAddresses = userAddresses;
	}

	public TbUserAddressInfoService getTbUserAddressInfoService() {
		return tbUserAddressInfoService;
	}

	public void setTbUserAddressInfoService(
			TbUserAddressInfoService tbUserAddressInfoService) {
		this.tbUserAddressInfoService = tbUserAddressInfoService;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public TbOrderInfo getTbOrderInfo() {
		return tbOrderInfo;
	}

	public void setTbOrderInfo(TbOrderInfo tbOrderInfo) {
		this.tbOrderInfo = tbOrderInfo;
	}

	public List<TbShoppingCar> getCars() {
		return cars;
	}

	public void setCars(List<TbShoppingCar> cars) {
		this.cars = cars;
	}

	public int getOrderDistrabutionMethod() {
		return orderDistrabutionMethod;
	}

	public void setOrderDistrabutionMethod(int orderDistrabutionMethod) {
		this.orderDistrabutionMethod = orderDistrabutionMethod;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public double getAllAmount() {
		return allAmount;
	}

	public void setAllAmount(double allAmount) {
		this.allAmount = allAmount;
	}

	public List<TbOrderInfo> getOrders() {
		return orders;
	}

	public void setOrders(List<TbOrderInfo> orders) {
		this.orders = orders;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public List<MyOrderVO> getMyOrderVOs() {
		return myOrderVOs;
	}

	public void setMyOrderVOs(List<MyOrderVO> myOrderVOs) {
		this.myOrderVOs = myOrderVOs;
	}

	public String getOrderOrderNumber() {
		return orderOrderNumber;
	}

	public void setOrderOrderNumber(String orderOrderNumber) {
		this.orderOrderNumber = orderOrderNumber;
	}

	public String getOrderOrderTime() {
		return orderOrderTime;
	}

	public void setOrderOrderTime(String orderOrderTime) {
		this.orderOrderTime = orderOrderTime;
	}

	
	public TbGoodsStyleInfo getStyle() {
		return style;
	}

	public void setStyle(TbGoodsStyleInfo style) {
		this.style = style;
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

	public TbShoppingCarService getTbShoppingCarService() {
		return tbShoppingCarService;
	}

	public void setTbShoppingCarService(TbShoppingCarService tbShoppingCarService) {
		this.tbShoppingCarService = tbShoppingCarService;
	}


}
