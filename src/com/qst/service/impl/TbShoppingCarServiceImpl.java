package com.qst.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qst.dao.TbShoppingCarDao;
import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbShoppingCar;
import com.qst.service.TbShoppingCarService;

/**
 * @author 杨惠(yanghui)
 * @date 2019/8/6 20:03
 * @version v1.0
 */
@Service
@Transactional
public class TbShoppingCarServiceImpl implements TbShoppingCarService {

	@Autowired
	private TbShoppingCarDao tbShoppingCarDao;

	@Override
	public void addShoppingCar(TbShoppingCar tbShoppingCar) {

		System.out.println("service" + tbShoppingCar.toString());
		tbShoppingCarDao.addShoppingCar(tbShoppingCar);

	}

	@Override
	public int findShoppingCarTotalNumber(int userId) {
		int count = tbShoppingCarDao.findShoppingCarTotalNumber(userId);
		System.out.println("共计商品" + count);
		return count;
	}

	@Override
	public List<TbShoppingCar> findTbShoppingCar(int userId) {
		return tbShoppingCarDao.findTbShoppingCar(userId);
	}

	@Override
	public void deleteShoppingCarInfo(int shoppingId) {
		tbShoppingCarDao.deleteShoppingCarInfo(shoppingId);

	}

	@Override
	public void updateShoppingCar(TbShoppingCar tbShoppingCar) {
		System.out.println("待修改信息    " +tbShoppingCar.toString());
		tbShoppingCarDao.updateShoppingCar(tbShoppingCar);
	}

	@Override
	@Transactional
	public TbShoppingCar findShoppingCarById(int shoppingCarId) {
		TbShoppingCar tbShoppingCar = tbShoppingCarDao.findShoppingCarById(shoppingCarId);
		return tbShoppingCar;
	}

}
