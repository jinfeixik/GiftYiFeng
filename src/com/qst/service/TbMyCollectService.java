package com.qst.service;

import java.util.List;

import com.qst.entity.TbMyCollect;
import com.qst.vo.MyCollectVO;

public interface TbMyCollectService {

	public void addMyCollect(TbMyCollect tbMyCollect);
	
	public List<MyCollectVO> findMyCollect(int userId);
	
	public void delMyCollect(int myCollectId);
}

