package com.qst.service;

import java.util.List;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbShoppingCar;



/**
 * @author 杨惠(yanghui)
 * @date 2019/8/6
 * @version v1.0
 */
public interface TbShoppingCarService {

	public void addShoppingCar(TbShoppingCar tbShoppingCar);
	
	public int findShoppingCarTotalNumber(int userId);
	
	public List<TbShoppingCar> findTbShoppingCar(int userId);
	
	public void deleteShoppingCarInfo(int shoppingId);
	
	public void updateShoppingCar(TbShoppingCar tbShoppingCar);

	public TbShoppingCar findShoppingCarById(int shoppingCarId);
	
}
