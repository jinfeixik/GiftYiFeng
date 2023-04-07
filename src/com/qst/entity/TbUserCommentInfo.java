package com.qst.entity;

import java.util.Set;

/**
 * TbUserCommentInfo entity. @author MyEclipse Persistence Tools
 */

public class TbUserCommentInfo implements java.io.Serializable {

	// Fields

	private Integer userCommentId;
	private String userCommentContent;
	private String userCommentTime;
	private Integer userCommentStar;
	private Integer userId;
	private Integer goodsId;
	
	
	

	// Constructors

	/** default constructor */
	public TbUserCommentInfo() {
	}

	/** full constructor */
	public TbUserCommentInfo(String userCommentContent, String userCommentTime,
			Integer userCommentStar, Integer userId, Integer goodsId) {
		this.userCommentContent = userCommentContent;
		this.userCommentTime = userCommentTime;
		this.userCommentStar = userCommentStar;
		this.userId = userId;
		this.goodsId = goodsId;
	}

	// Property accessors

	public Integer getUserCommentId() {
		return this.userCommentId;
	}

	public void setUserCommentId(Integer userCommentId) {
		this.userCommentId = userCommentId;
	}

	public String getUserCommentContent() {
		return this.userCommentContent;
	}

	public void setUserCommentContent(String userCommentContent) {
		this.userCommentContent = userCommentContent;
	}

	public String getUserCommentTime() {
		return this.userCommentTime;
	}

	public void setUserCommentTime(String userCommentTime) {
		this.userCommentTime = userCommentTime;
	}

	public Integer getUserCommentStar() {
		return this.userCommentStar;
	}

	public void setUserCommentStar(Integer userCommentStar) {
		this.userCommentStar = userCommentStar;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getGoodsId() {
		return this.goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}


	@Override
	public String toString() {
		return "TbUserCommentInfo [userCommentId=" + userCommentId
				+ ", userCommentContent=" + userCommentContent
				+ ", userCommentTime=" + userCommentTime + ", userCommentStar="
				+ userCommentStar + ", userId=" + userId + ", goodsId="
				+ goodsId  + "]";
	}

}