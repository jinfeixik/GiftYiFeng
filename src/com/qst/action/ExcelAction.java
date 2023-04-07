package com.qst.action;

import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qst.entity.TbOrderInfo;
import com.qst.entity.TbUserInfo;
import com.qst.service.TbOrderInfoService;
import com.qst.service.TbUserInfoService;
import com.qst.util.BeanUtil;
import com.qst.util.ExcelUtils;
import com.qst.vo.OrderExcelVo;
import com.qst.vo.UserInfoExcel;

/**
 * @author 赵海庭（zhaohaiting）
 * @date 2019-8-13上午10:49:43
 * @version v1.0
 * 用户数据导出到表
 */
@Repository
public class ExcelAction {
	@Autowired
	private TbUserInfoService tbUserInfoService;
	@Autowired
	private TbOrderInfoService tbOrderInfoService;
	private List<Integer> userId = new ArrayList<Integer>();
	private List<Integer> orderId = new ArrayList<Integer>();
	
 	public String excel() {
		
		try{
			
            List<TbUserInfo> tb = new ArrayList<TbUserInfo>();

            List<UserInfoExcel> ue=new ArrayList<UserInfoExcel>();
            System.out.println("待下载的用户数量" +userId.size());
            
            if(userId.size() == 0) {
            	System.out.println("全部打印");
            tb=tbUserInfoService.findTbUserInfos();
            } else {
            	System.out.println("打印部分");
				tb = tbUserInfoService.findTbUserInfos(userId);
			}

            for(TbUserInfo list:tb){
            	UserInfoExcel u=new UserInfoExcel();
            	System.out.println("待打印用户信息" +list.toString());
                u.setUserId(list.getUserId());
            	u.setUserName(list.getUserName());
            	u.setUserEmail(list.getUserEmail());
            	u.setUserPhoneNumber(list.getUserPhoneNumber());
            	u.setUserBirthday(list.getUserBirthday());
            	u.setUserLevel(list.getUserLevel());
            
            	if(list.getUserSex()==0) {
            	u.setUserSex("未设置");
            	}
            	else if(list.getUserSex()==1) {
                u.setUserSex("男");}
            	else if(list.getUserSex()==2) {
                u.setUserSex("女");
            	}
            	if(list.getUserStatus()==0){
            		u.setUserStatus("可用");
            	}
            	else
            	{
            		u.setUserStatus("禁用");
            	}
            	System.out.println("用户打印的信息" +u.toString());
            	ue.add(u);
            	
            }
           
            String[] headerName = { "序号","姓名","性别", "邮箱","手机号码","生日","用户等级","用户状态"};
            String[] headerKey = { "userId","userName", "userSex","userEmail","userPhoneNumber","userBirthday","userLevel","userStatus"};
            HSSFWorkbook wb = ExcelUtils.createExcel(headerName, headerKey, "年数据管理", ue);
           
            HttpServletResponse response = ServletActionContext.getResponse();
          
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            Date date = new Date();
            String str = sdf.format(date);
            String fileName = "用户信息管理" + str;
          
            OutputStream ouputStream = response.getOutputStream();
            response.reset();
            response.setHeader("Content-disposition",
                    "attachment;filename=" + new String(fileName.getBytes("gb2312"), "ISO-8859-1") + ".xls");
            response.setContentType("application/vnd.ms-excel");
            wb.write(ouputStream);
            ouputStream.close();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
		return "success";
		
	}
	
	
	public String excelOrder() {
		
		try{
			
            List<TbOrderInfo> tb = new ArrayList<TbOrderInfo>();

            List<OrderExcelVo> ue=new ArrayList<OrderExcelVo>();
            System.out.println("待下载的用户数量\n\n\n\n" +orderId.size());
            
            if(orderId.size() == 0) {
            	System.out.println("全部打印");
            tb=tbOrderInfoService.findAllOrderInfos();
            } else {
            	System.out.println("打印部分");
				tb = tbOrderInfoService.findPartOrderInfos(orderId);
			}
            ue = BeanUtil.copyList(tb, OrderExcelVo.class);
           
            String[] headerName = { "序号","订单号","时间", "价格","状态（0为未完成， 1为已完成）"};
            String[] headerKey = { "orderId","orderPayOrderNumber", "orderOrderTime","orderAmount","orderStatus"};
            HSSFWorkbook wb = ExcelUtils.createExcel(headerName, headerKey, "年数据管理", ue);
           
            HttpServletResponse response = ServletActionContext.getResponse();
          
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            Date date = new Date();
            String str = sdf.format(date);
            String fileName = "订单信息管理" + str;
          
            OutputStream ouputStream = response.getOutputStream();
            response.reset();
            response.setHeader("Content-disposition",
                    "attachment;filename=" + new String(fileName.getBytes("gb2312"), "ISO-8859-1") + ".xls");
            response.setContentType("application/vnd.ms-excel");
            wb.write(ouputStream);
            ouputStream.close();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
		return "success";
		
	}

	public List<Integer> getUserId() {
		return userId;
	}

	public void setUserId(List<Integer> userId) {
		this.userId = userId;
	}

}
