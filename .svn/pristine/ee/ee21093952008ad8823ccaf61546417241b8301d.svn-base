package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101000654131";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCRb11RGTGnaesb/1Go/e7LtDEq4tccrcex17on3yUCBsviXuFNhgOucNbScGR+szy62H2x+HfwyOIg0HghNphwMGNK5T06WGhEXGjPTFS+7V9O3SzpdYfjO/YNJyQOBGSppKr2wgtmHP7zp5P260buoLr7xBbsJMYLTRDB2vD99x9vsBuvT3NQdMSyf8zOCEhCj6BZkjf/d8OUCptBm+S3de9tWz6IhRbFGNK+mpAPq56z8320oQKPFJeDHd1LW4HXY4m7c8IFQgJcvvk8Q/RywPPKzljT+PF97gErHkHR1cWlstZrmtQn3oMRUyQGfn+VVul8In0yu70LndseUJ1dAgMBAAECggEASBoJDorKBjDJwdCbwIdcGxuTgKqDcRFqvm2wOdI0O8P40pqtYky9iH8i0aOs/u+HfS6VamU/uV0uVoxj8jtp6bzjjR8HcuSflLynrZYvMZTnOmcGvBtrqilw++ZaxqRA76XWqI1dL1vSviNnhPPx75459VWq85nroXCsjR8peQ6KY1tnIT3IQwMKU0Y9vIKHgoOVKB8gLZPuhBPHvYkD1wkGoIsYwZ/khF/HyoQJT2wDXyXBEv0rvZPL33nO/PtPo2mytY9vAKN4c4NFMAzHuwRhjCPrxi8wk0v6km1Z1Qqr2UtSKskbI9wmMfRkgmsPWV60iHZrG7Ur0683sYBugQKBgQDQOmjvzhV82H4t3krOunIGaKg9UzA3Ytfsr6ISk+h5BtP/JKsxaRVGSQYw3DGZ4+qq+7pC5WWGxGJ4XZunrJRx9WL3Hmi+6y/B2I1gD/5t9mx0DFpm+ToAmqNzaemdCHkQr8yqu94m16iT3OLVFkKqs65i3lrNLI/gfv6luLUWvQKBgQCyzQHxFrXhoUdlBcsrC2YBZFLABjsb2CZv+7BSZZnhq9nb+Zlzncv3oD5QFMpVPJCvrqpLCuAQfwE/eu+3rKR3x2RQNtWKQmqdj5TMcpfE59DhyZUXwpCvRE9mgXTXMalpK/TQdBcNCW4u0eXic9eAOZi4m6EhcV1GagI25WnbIQKBgF7l/+Uqmwhm8jqdUKKevlDFacdpHlRfq+CmusqUtiJSRlPFtm+yYIvDxBqIf+KOyOhcCStruLWO0wHgR4xHTvAQ0aWmKj64mO9TbjsVjvM2l37cEmdTtmeIEm4LGvkCX4qHVFOLg1dYee/Jf2d12bRKZ3OPuvo/EONTfWKxp3ZRAoGAdZZVXJQu8T/7j/iLcLeCUhAES7zNSraQML05bDbdSIiYMg6oWFzCMwvzbv79QakfDiq0W72/NZoQ3AqhdA3Z69v5oLcvIEoli5FNrlb+cMRznsnPf1y5gkpOXX9ts8g5Pa1mx2BReIVnLOtlX9QHOZCnW2EeSrwfN5un8SpWv4ECgYBqPs01OfDhD75kdvXLwxRlzrSwC5vHwq68KfZOYVFK2ut6PfotAL0dcDmwxOn/kMye5ev9ECsLYHXPYg8K0RpON9001STo79PWuBY5NSbqX0adO953X204n/mFB/7ZVi16y3RMTgyAs4Oi7PTfykj7lz6e2PnFe97c7SZuB7CIgQ==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkW9dURkxp2nrG/9RqP3uy7QxKuLXHK3Hsde6J98lAgbL4l7hTYYDrnDW0nBkfrM8uth9sfh38MjiINB4ITaYcDBjSuU9OlhoRFxoz0xUvu1fTt0s6XWH4zv2DSckDgRkqaSq9sILZhz+86eT9utG7qC6+8QW7CTGC00Qwdrw/fcfb7Abr09zUHTEsn/MzghIQo+gWZI3/3fDlAqbQZvkt3XvbVs+iIUWxRjSvpqQD6ues/N9tKECjxSXgx3dS1uB12OJu3PCBUICXL75PEP0csDzys5Y0/jxfe4BKx5B0dXFpbLWa5rUJ96DEVMkBn5/lVbpfCJ9Mru9C53bHlCdXQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/YiFengGift/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/YiFengGift/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

