package com.qst.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbStyleDao;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.service.TbStyleService;
/**
 * @author 袁滢yuanying
 * @date 2019-8-12下午7:20:05
 * @version v1.0
 * 废品
 */
@Service
public class TbStyleServiceImpl implements TbStyleService{
	
	@Autowired
	private TbStyleDao tbStylrDao;
	
	
	public void addStyle(TbGoodsStyleInfo tbGoodsStyleInfo) {
		
		tbStylrDao.addStyle(tbGoodsStyleInfo);
	}
	
	public void deleteStyle(int id) {
		TbGoodsStyleInfo tbGoodsStyleInfo = tbStylrDao.findStyle(id);
		if(tbGoodsStyleInfo != null) {
			tbStylrDao.deleteStyle(id);
		}		
	}
	
	@Override
	public TbGoodsImageInfo findImageInfo(int id) {
		TbGoodsImageInfo image = tbStylrDao.findImageInfo(id);
		return image;
	}
	
	
	public TbStyleDao getTbStylrDao() {
		return tbStylrDao;
	}

	public void setTbStylrDao(TbStyleDao tbStylrDao) {
		this.tbStylrDao = tbStylrDao;
	}

	


}
