package com.qst.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.jws.soap.SOAPBinding.Style;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Repository;

import com.qst.dao.impl.TbGoodsDetailInfoDaoImpl;
import com.qst.dao.impl.TbGoodsTypeInfoDaoImpl;
import com.qst.entity.TbGoodsImageInfo;
import com.qst.entity.TbGoodsStyleInfo;
import com.qst.entity.TbGoodsTypeInfo;
import com.qst.entity.TbGoodsDetailInfo;

@Repository
public class FindGoodsTypeAction {
	@Resource
	private TbGoodsTypeInfoDaoImpl tgd;
	
	private String message;
	private String occation;
	private int price;
	private String object;
	private String classify;
	private String flag;
	private int totalNum;
	private int curPage;
	private int totalPage;
	private JSONArray search_list;

	public String findGoodsType() {
		List<TbGoodsDetailInfo> tgi1 = new ArrayList<TbGoodsDetailInfo>();
		System.out.println(occation+" "+ (price ==0) +" "+ object+" "+classify + " message = " +message);
		List<TbGoodsTypeInfo> tg = tgd.findGoodsType(occation, price, object,
				classify);
		System.out.println("类型符合数量" +tg.size());
		TbGoodsDetailInfo in = new TbGoodsDetailInfo();
		if(message != null && !message.equals("")) {
			for(TbGoodsTypeInfo type: tg) {
				in = tgd.findDetalilInfo(type.getGoodsTypeId());
				System.out.println("满足信息数量" +in.getGoodsName());
				if(in != null && in.getGoodsName().indexOf(message) != -1) {
					tgi1.add(in);
				}
			}
		} else {
			for(TbGoodsTypeInfo type: tg) {
				System.out.println("yaya测试tg\n\n");
				in = tgd.findDetalilInfo(type.getGoodsTypeId());
				if(in != null) {
					System.out.println(in.toString());
				tgi1.add(in);
			}
			}
		}
		
		for(TbGoodsDetailInfo detail: tgi1) {
			System.out.println("商品信息" +detail.toString());
		}
		
		
		/*int goodsTotals =tg.size();
		 for (int i = 0; i < goodsTotals; i++) {
			// 类型id查询商品详情信息
			List<TbGoodsDetailInfo> tgi = tgd.findGoodsDetail(tg.get(i)
					.getGoodsTypeId(), message);
			tgi1.add(tgi.get(0));
		}*/

		// 分页
		totalNum = tgi1.size();
		System.out.println("总记录条数" + totalNum);
		int num = 8;
		if (totalNum % num == 0) {
			totalPage = totalNum / num;
		} else {
			totalPage = totalNum / num + 1;
		}

		if (curPage <= 1) {
			curPage = 1;
		} else if (curPage > totalPage) {
			curPage = totalPage;
		}
		int start = (curPage - 1) * num;
		int end = start + num;
		if(end > totalNum) {
			end = totalNum;
		}
		System.out.println("curPage = " +curPage+ ", totalPage =  "+ totalPage +", start  " + start + "   " + "end  " + end);
		
		
		
		// 商品排序
		if (flag.equals("畅销")) {
			Collections.sort(tgi1, new Comparator<TbGoodsDetailInfo>() {
				public int compare(TbGoodsDetailInfo arg0,
						TbGoodsDetailInfo arg1) {
					return arg1.getGoodsSales().compareTo(arg0.getGoodsSales());
				}
			});
		} else if (flag.equals("最新")) {
			Collections.sort(tgi1, new Comparator<TbGoodsDetailInfo>() {
				public int compare(TbGoodsDetailInfo arg0,
						TbGoodsDetailInfo arg1) {
					return arg1.getGoodsTime().compareTo(arg0.getGoodsTime());
				}
			});
		} else if (flag.equals("价格由低到高")) {
			Collections.sort(tgi1, new Comparator<TbGoodsDetailInfo>() {
				public int compare(TbGoodsDetailInfo arg0,
						TbGoodsDetailInfo arg1) {
					return arg0.getGoodsPrice().compareTo(arg1.getGoodsPrice());
				}
			});
		}else if (flag.equals("价格由高到低")) {
			Collections.sort(tgi1, new Comparator<TbGoodsDetailInfo>() {
				public int compare(TbGoodsDetailInfo arg0,
						TbGoodsDetailInfo arg1) {
					return arg1.getGoodsPrice().compareTo(arg0.getGoodsPrice());
				}
			});
		}

		List<TbGoodsImageInfo> tgi2 = new ArrayList<TbGoodsImageInfo>();

		for (int j = 0; j < tgi1.size(); j++) {
			// 单件商品
			System.out.println("j = " +j +"， tgi.size() = " +tgi1.size());
				System.out.println("id：    " + tgi1.get(j).getGoodsId());
				System.out.println("名称：   " + tgi1.get(j).getGoodsName());
				System.out.println("价格：   " + tgi1.get(j).getGoodsPrice());
				System.out.println("时间：   " + tgi1.get(j).getGoodsTime());
				List<TbGoodsStyleInfo> style = new ArrayList<TbGoodsStyleInfo>(tgi1.get(j).getTbGoodsStyleInfo());
				
				if(style.size() == 0) {
					System.out.println("商品ID = " +tgi1.get(j).getGoodsId());
					TbGoodsImageInfo image = new TbGoodsImageInfo();
					image.setGoodsImagePath("http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/10/1565366478803.png");
				} else {
					System.out.println("图片id = " +style.get(0).getGoodsImageId());
				tgi2.add(style.get(0).getTbGoodsImageInfo());
				}
				System.out.println("--------------");
		}
System.out.println("排序完成");
		// 获取每一个选项的选项名和票数
		JSONArray jArray = new JSONArray();
		System.out.println("staart " +start +", end = " +end);
		for (int i = start; i < end; i++) {
			JSONObject jObject = new JSONObject();
			// 商品id
			jObject.put("id", tgi1.get(i).getGoodsId());
			// 获取图片路径
			jObject.put("image", tgi2.get(i).getGoodsImagePath());
			// 商品名称
			jObject.put("name", tgi1.get(i).getGoodsName());
			// 商品单价
			jObject.put("price", tgi1.get(i).getGoodsPrice());
			System.out.println("销量" + i +"    " +tgi1.get(i).getGoodsSales());
			jObject.put("sales", tgi1.get(i).getGoodsSales());
			// 商品上新
			 Date d = new Date(); 
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
			 String dateNow = sdf.format(d); 
			 //System.out.println(dateNow.compareTo(tgi1.get(i).getGoodsTime()));
			jObject.put("time", dateNow.compareTo(tgi1.get(i).getGoodsTime()));
			jObject.put("totalpage", totalPage);
			// 商品评价数
			// jObject.put("comment", tgi1.get(i).getGoodsTime());

			jArray.add(jObject);
			System.out.println(jObject.toString());
		}
		search_list = new JSONArray();
		search_list = jArray;

		return "success";
	}

	public TbGoodsTypeInfoDaoImpl getTgd() {
		return tgd;
	}

	public void setTgd(TbGoodsTypeInfoDaoImpl tgd) {
		this.tgd = tgd;
	}

	public String getOccation() {
		return occation;
	}

	public void setOccation(String occation) {
		this.occation = occation;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getObject() {
		return object;
	}

	public void setObject(String object) {
		this.object = object;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public int getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}
	
	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public JSONArray getSearch_list() {
		return search_list;
	}

	public void setSearch_list(JSONArray search_list) {
		this.search_list = search_list;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}
