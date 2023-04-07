package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.qst.entity.TbGoodsDetailInfo;
import com.qst.entity.TbShoppingCar;
import com.qst.entity.TbUserCommentInfo;
import com.qst.entity.TbUserInfo;
/**
 * 
 * @author 李阳liyang
 * @date 2019-8-9下午7:18:00
 * @version v1.0
 */
@Service
public interface TbUserCommentInfoDao {
	/**
	 * 添加评论
	 */
	public void addUserCommentInfo(TbUserCommentInfo tbUserCommentInfo);
	/**
	 * 修改评论
	 */
	public void updateUserCommentInfo(TbUserCommentInfo tbUserCommentInfo);
	/**
	 * 删除评论
	 */
	public void deleteUserCommentInfo(int userCommentId);
	/**
	 * 展示所有评论
	 */
	public List<TbUserCommentInfo> findTbUserCommentInfos(String hql);
	/**
	 * 展示我的评论
	 */	
	public List<TbUserCommentInfo> findMyTbUserCommentInfos(String hql,int userId);
	/**
	 * 展示商品评论
	 */	
	public List<TbUserCommentInfo> findGoodsTbUserCommentInfos(String hql,int goodsId);
	/**
	 * 好评数
	 */	
	public int  findCountUserCommentStar(String hql,int goodsId);
	/**
	 * 用户信息
	 */	
	public List<TbUserInfo> findUserMessage(String hql,int userId);
	
	
	

}
