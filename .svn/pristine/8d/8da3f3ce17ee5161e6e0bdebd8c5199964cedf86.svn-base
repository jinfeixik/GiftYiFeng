package com.qst.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;

/**
 * 
 * @author 李阳liyang
 * @date 2019-8-9上午11:41:14
 * @version v1.0
 */

public interface TbUserCommentInfoService {
	
    public void addUserCommentInfo(TbUserCommentInfo tbUserCommentInfo);
	
	public void updateUserCommentInfo(TbUserCommentInfo tbUserCommentInfo);
	
	public void deleteUserCommentInfo(int userCommentId);
	
	public List<TbUserCommentInfo> findTbUserCommentInfos();
	
    public List<TbUserCommentInfo> findMyTbUserCommentInfos(final int userId);
	
	public List<TbUserCommentInfo> findGoodsTbUserCommentInfos(final int goodsId);
	
	public int  findCountUserCommentStar(int goodsId);
	
	public List<TbUserInfo> findUserMessage(int userId);
}
