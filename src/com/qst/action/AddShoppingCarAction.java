package com.qst.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbShoppingCar;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbShoppingCarService;

/**
 * @author 杨惠(yanghui)
 * @date 2019/8/7 9:07
 * @version v1.0
 */
@Controller
@Scope("prototype")
public class AddShoppingCarAction extends BaseAction{

	private TbShoppingCar tbShoppingCar;

	private List<TbShoppingCar> tbShopingCars;

	private TbUserInfo tbUserInfo;

	private TbGoodsStyleInfo tbGoodsStyleInfo;

	private TbGoodsDetailInfo tbGoodsDetailInfo;
	@Resource
	private TbShoppingCarService tbShoppingCarService;

	private int totalNumber;

	private double allAmount;

	private int shoppingCarId;

	private int itemNumber;
	
	private int goodStyleId;
	
	private double price;

	private JSONArray jArray;
	private JSONArray goods_list;
	private JSONArray goods_list2;

	private List<TbGoodsStyleInfo> tbGoodsStyleInfos;

	// 把某条商品加入购物车
	public String addShoppingCar() {
		System.out.println("进入添加购物车 goodStyleId "+goodStyleId+" price "+price);

		TbUserInfo user = (TbUserInfo) session.get("user"); 
		tbShoppingCar = new TbShoppingCar();
		
		tbShoppingCar.setUserId(user.getUserId());
		tbShoppingCar.setGoodsStyleId(goodStyleId);

		tbShoppingCar.setShoppingCarAmount(price);
		tbShoppingCar.setShoppingCarGoodsNumber(1);

		// 添加一条
		tbShoppingCarService.addShoppingCar(tbShoppingCar);
		
		System.out.println("添加进购物车成功");

		return "success";
	}

	// 获取用户的购物车
	public String findAllShoppingCarInfo() {
		TbUserInfo user = (TbUserInfo) session.get("user"); 
		tbShopingCars = tbShoppingCarService.findTbShoppingCar(user.getUserId());
		System.out.println("查找用户购物车信息");
		allAmount = 0;
		for (TbShoppingCar car : tbShopingCars) {
			 System.out.println("图片样式"+car.getTbGoodsStyleInfo().getTbGoodsImageInfo().getGoodsImagePath());
		}
		// System.out.println(tbShopingCars.get(0).getShoppingCarGoodsNumber());
		System.out.println("遍历完成");

		HttpServletRequest request = ServletActionContext.getRequest();
		// 获取每一个选项的选项名和票数
		jArray = new JSONArray();
		for (int i = 0; i < tbShopingCars.size(); i++) {
			JSONObject jObject = new JSONObject();
			// 购物车id
			jObject.put("id", tbShopingCars.get(i).getTbGoodsStyleInfo().getTbGoodsDetailInfo().getGoodsId());
			// 获取图片路径
			jObject.put("image", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsImageInfo().getGoodsImagePath());
			// 商品名称
			jObject.put("name", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsName());
			// 商品样式名
			jObject.put("style", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getGoodsStyleName());
			// 商品单价
			jObject.put("price", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsPrice());
			// 商品库存
			jObject.put("stock", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getGoodsStyleStock());
			// 商品数量
			jObject.put("num", tbShopingCars.get(i).getShoppingCarGoodsNumber());
			// 商品小计
			jObject.put("amount", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsPrice()
					* tbShopingCars.get(i).getShoppingCarGoodsNumber());

			// 购物车总金额
			allAmount = allAmount
					+ tbShopingCars.get(i).getTbGoodsStyleInfo()
							.getTbGoodsDetailInfo().getGoodsPrice()
					* tbShopingCars.get(i).getShoppingCarGoodsNumber();
			System.out.println("共计" + allAmount);
			jObject.put("allAmount", allAmount);

			jArray.add(jObject);
		}
		// 统计购物车商品件数
		totalNumber = tbShoppingCarService.findShoppingCarTotalNumber(1);
		System.out.println("共计" + totalNumber + "件");
		request.setAttribute("tbShopingCars", jArray);

		goods_list = new JSONArray();
		goods_list = jArray;

		return "success";
	}

	// 获取用户的购物车（购物车页面专享）
	public String findAllShoppingCar() {
		TbUserInfo user = (TbUserInfo) session.get("user"); 
		tbShopingCars = tbShoppingCarService.findTbShoppingCar(user.getUserId());
		allAmount = 0;

		HttpServletRequest request = ServletActionContext.getRequest();
		// 获取每一个选项的选项名和票数
		goods_list2 = new JSONArray();
		for (int i = 0; i < tbShopingCars.size(); i++) {
			JSONObject jObject = new JSONObject();
			// 购物车id
			jObject.put("goodsId", tbShopingCars.get(i).getTbGoodsStyleInfo().getTbGoodsDetailInfo().getGoodsId());
			
			jObject.put("id", tbShopingCars.get(i).getShoppingCarId());
			// 获取图片路径
			jObject.put("image", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsImageInfo().getGoodsImagePath());
			// 商品名称
			jObject.put("name", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsName());
			// 商品样式名
			jObject.put("style", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getGoodsStyleName());
			// 商品单价
			jObject.put("price", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsPrice());
			// 商品库存
			jObject.put("stock", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getGoodsStyleStock());
			// 商品数量
			jObject.put("num", tbShopingCars.get(i).getShoppingCarGoodsNumber());
			// 商品小计
			jObject.put("amount", tbShopingCars.get(i).getTbGoodsStyleInfo()
					.getTbGoodsDetailInfo().getGoodsPrice()
					* tbShopingCars.get(i).getShoppingCarGoodsNumber());
			// 购物车总金额
			allAmount = allAmount
					+ tbShopingCars.get(i).getTbGoodsStyleInfo()
							.getTbGoodsDetailInfo().getGoodsPrice()
					* tbShopingCars.get(i).getShoppingCarGoodsNumber();
			System.out.println("共计" + allAmount);
			jObject.put("allAmount", allAmount);

			goods_list2.add(jObject);
		}
		// 统计购物车商品件数
		totalNumber = tbShoppingCarService.findShoppingCarTotalNumber(1);
		System.out.println("共计" + totalNumber + "件");
		request.setAttribute("tbShopingCars", goods_list2);

		return "success";
	}

	// 删除购物车里的item
	public String deleteShoppingCarInfo() {
		System.out.println("shangchu");
		System.out.println("待删除" +shoppingCarId);
		tbShoppingCarService.deleteShoppingCarInfo(shoppingCarId);
		System.out.println("删除id为" + shoppingCarId + "的商品");
		return "success";
	}

	// 更改购物车里的item的数量
	public String changeItemNumber() {
		System.out.println("更改购物车里的item的数量");
		System.out.println("shoppingCarId " + shoppingCarId + " itemNumber "
				+ itemNumber);

		TbShoppingCar tbShoppingCarU = tbShoppingCarService
				.findShoppingCarById(shoppingCarId);
		tbShoppingCarU.setShoppingCarGoodsNumber(itemNumber);
		Double price = tbShoppingCarU.getTbGoodsStyleInfo()
				.getTbGoodsDetailInfo().getGoodsPrice();
		tbShoppingCarU.setShoppingCarAmount(itemNumber * price);
		tbShoppingCarService.updateShoppingCar(tbShoppingCarU);
		//System.out.println("修改成功");
		tbShoppingCarU = tbShoppingCarService
				.findShoppingCarById(shoppingCarId);
		System.out.println(tbShoppingCarU.toString());

		/*
		  tbShoppingCar =
		  tbShoppingCarService.findShoppingCarById(shoppingCarId);
		  tbShoppingCar.setShoppingCarId(shoppingCarId);
		  tbShoppingCar.setShoppingCarGoodsNumber(itemNumber); Double price =
		  tbShoppingCar.getTbGoodsStyleInfo()
		  .getTbGoodsDetailInfo().getGoodsPrice();
		  tbShoppingCar.setShoppingCarAmount(itemNumber * price);
		  tbShoppingCarService.updateShoppingCar(tbShoppingCar);
		  System.out.println(tbShoppingCar.toString());
		 */
		return "success";
	}

	// 增加购物车里item的数量 杨惠在这里awsl
	public String addItemNumber() {
		System.out.println("添加数量");
		// itemNumber++;
		TbShoppingCar tbShoppingCarU = tbShoppingCarService
				.findShoppingCarById(shoppingCarId);
		tbShoppingCarU.setShoppingCarGoodsNumber(itemNumber);
		// 单价 oh shit
		Double price = tbShoppingCarU.getTbGoodsStyleInfo()
				.getTbGoodsDetailInfo().getGoodsPrice();
		tbShoppingCarU.setShoppingCarAmount(itemNumber * price);
		tbShoppingCarService.updateShoppingCar(tbShoppingCarU);

		tbShoppingCarU = tbShoppingCarService.findShoppingCarById(21);
		System.out.println(tbShoppingCarU.toString());

		return "success";
	}

	// 减少购物车里item的数量 杨惠在这里awzbl
	public String deleteItemNumber() {
		System.out.println("减少数量");
		// itemNumber--;
		TbShoppingCar tbShoppingCarU = tbShoppingCarService
				.findShoppingCarById(shoppingCarId);
		tbShoppingCarU.setShoppingCarGoodsNumber(itemNumber);
		// 单价 oh shit
		Double price = tbShoppingCarU.getTbGoodsStyleInfo()
				.getTbGoodsDetailInfo().getGoodsPrice();
		tbShoppingCarU.setShoppingCarAmount(itemNumber * price);
		tbShoppingCarService.updateShoppingCar(tbShoppingCarU);

		tbShoppingCarU = tbShoppingCarService.findShoppingCarById(21);
		System.out.println(tbShoppingCarU.toString());

		return "success";
	}

	public TbShoppingCarService getTbShoppingCarService() {
		return tbShoppingCarService;
	}

	public void setTbShoppingCarService(
			TbShoppingCarService tbShoppingCarService) {
		this.tbShoppingCarService = tbShoppingCarService;
	}

	public TbShoppingCar getTbShoppingCar() {
		return tbShoppingCar;
	}

	public void setTbShoppingCar(TbShoppingCar tbShoppingCar) {
		this.tbShoppingCar = tbShoppingCar;
	}

	public TbUserInfo getTbUserInfo() {
		return tbUserInfo;
	}

	public void setTbUserInfo(TbUserInfo tbUserInfo) {
		this.tbUserInfo = tbUserInfo;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public List<TbGoodsStyleInfo> getTbGoodsStyleInfos() {
		return tbGoodsStyleInfos;
	}

	public void setTbGoodsStyleInfos(List<TbGoodsStyleInfo> tbGoodsStyleInfos) {
		this.tbGoodsStyleInfos = tbGoodsStyleInfos;
	}

	public List<TbShoppingCar> getTbShopingCars() {
		return tbShopingCars;
	}

	public void setTbShopingCars(List<TbShoppingCar> tbShopingCars) {
		this.tbShopingCars = tbShopingCars;
	}

	public TbGoodsStyleInfo getTbGoodsStyleInfo() {
		return tbGoodsStyleInfo;
	}

	public void setTbGoodsStyleInfo(TbGoodsStyleInfo tbGoodsStyleInfo) {
		this.tbGoodsStyleInfo = tbGoodsStyleInfo;
	}

	public TbGoodsDetailInfo getTbGoodsDetailInfo() {
		return tbGoodsDetailInfo;
	}

	public void setTbGoodsDetailInfo(TbGoodsDetailInfo tbGoodsDetailInfo) {
		this.tbGoodsDetailInfo = tbGoodsDetailInfo;
	}

	public int getShoppingCarId() {
		return shoppingCarId;
	}

	public void setShoppingCarId(int shoppingCarId) {
		this.shoppingCarId = shoppingCarId;
	}

	public double getAllAmount() {
		return allAmount;
	}

	public void setAllAmount(double allAmount) {
		this.allAmount = allAmount;
	}

	public int getItemNumber() {
		return itemNumber;
	}

	public void setItemNumber(int itemNumber) {
		this.itemNumber = itemNumber;
	}

	public JSONArray getjArray() {
		return jArray;
	}

	public void setjArray(JSONArray jArray) {
		this.jArray = jArray;
	}

	public JSONArray getGoods_list() {
		return goods_list;
	}

	public void setGoods_list(JSONArray goods_list) {
		this.goods_list = goods_list;
	}

	public JSONArray getGoods_list2() {
		return goods_list2;
	}

	public void setGoods_list2(JSONArray goods_list2) {
		this.goods_list2 = goods_list2;
	}

	public int getGoodStyleId() {
		return goodStyleId;
	}

	public void setGoodStyleId(int goodStyleId) {
		this.goodStyleId = goodStyleId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
