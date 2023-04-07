package com.qst.service;

import java.util.List;

import com.qst.entity.TbUserInfo;


/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-6下午3:09:13
 * @version v1.0
 */
public interface TbUserInfoService {
	
	/**
	 * @param userinfo
	 * 添加一天用户详细信息记录
	 */
	public void addTbUserInfo(TbUserInfo userinfo);
	
	
	/**
	 * @param info
	 * @param password
	 * 登录判断
	 * @throws Exception 
	 */
	public TbUserInfo findLoginTbUserInfo(String info, String password) throws Exception;
	
	
	/**
	 * @param userinfo
	 * 注册
	 * @return 
	 */
	public void addRegisterTbUserInfo(TbUserInfo userinfo);

	public int findUserNameRegister(TbUserInfo tbUserInfo);


	public int findUserPhoneRegister(TbUserInfo tbUserInfo);


	public int findUserEmailRegister(TbUserInfo tbUserInfo);
	
	public int updateTbUserInfo(TbUserInfo tbUserInfo);

	public TbUserInfo findUserInfo(String info);
	
	public TbUserInfo findUserInfo(int id);
	
	/**
	 * @return
	 * 查找所有用户
	 */
	public List<TbUserInfo> findTbUserInfos();
	
	/**
	 * @author yuanying 
	 * @param id
	 * @return
	 * 查找指定id用户
	 */
	public List<TbUserInfo> findTbUserInfos(List<Integer> id);
	
	
	/**
	 * @author yuanying 
	 * @param status
	 * @param id
	 * 修改用户状态
	 */
	public void updateUserStatus(int status, int id);

	/**
	 * @param tbUserInfo
	 * 修改用户积分
	 */
	public void updateLevel(final TbUserInfo tbUserInfo);
}
