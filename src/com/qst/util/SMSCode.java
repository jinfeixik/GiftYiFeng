package com.qst.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.springframework.stereotype.Component;

public class SMSCode {
	// 将手机号码和随机生成的验证码传递 过来
	public static boolean sendCode(String phoneNumber, String code)
			throws Exception {
		String code_str = URLEncoder.encode("#code#=" + code, "utf-8");
		// 包装好url对象，将接口地址包装在此对象中
		URL url = new URL("http://v.juhe.cn/sms/send?mobile=" + phoneNumber
				+ "&tpl_id=178507&tpl_value=" + code_str
				+ "&key=94bd035dbb69d91bb54794a7eb1dfd4f");
		// 打开连接，得到连接对象
		URLConnection connection = url.openConnection();
		// 向数据库发出连接请求
		connection.connect();

		// 获取服务器响应的数据
		BufferedReader bufferedReader = new BufferedReader(
				new InputStreamReader(connection.getInputStream(), "utf-8"));
		StringBuffer buffer = new StringBuffer();
		String lineData = null;
		while ((lineData = bufferedReader.readLine()) != null) {
			buffer.append(lineData);
		}
		bufferedReader.close();
		if (buffer.toString().indexOf("\"error_code\":0") >= 0) {
			return true;
		}
		return false;
	}
}