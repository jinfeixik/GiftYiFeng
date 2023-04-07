package com.qst.vo;
import java.util.List;
import java.util.Map;

public class MyOrderVO {
 
 private int orderId;
 private List<String> goodsImagePath;
 private Map<String, Double> goodsMessage;
 private double orderAmount;
 private String orderOrderNumber;
 private String orderOrderTime;
 public int getOrderId() {
  return orderId;
 }
 @Override
 public String toString() {
  return "MyOrderVO [orderId=" + orderId + ", goodsImagePath="
    + goodsImagePath + ", goodsMessage=" + goodsMessage
    + ", orderAmount=" + orderAmount + ", orderOrderNumber="
    + orderOrderNumber + ", orderOrderTime=" + orderOrderTime + "]";
 }
 public void setOrderId(int orderId) {
  this.orderId = orderId;
 }
 public List<String> getGoodsImagePath() {
  return goodsImagePath;
 }
 public void setGoodsImagePath(List<String> goodsImagePath) {
  this.goodsImagePath = goodsImagePath;
 }
 
 
 public double getOrderAmount() {
  return orderAmount;
 }
 public void setOrderAmount(double orderAmount) {
  this.orderAmount = orderAmount;
 }
 public String getOrderOrderNumber() {
  return orderOrderNumber;
 }
 public void setOrderOrderNumber(String orderOrderNumber) {
  this.orderOrderNumber = orderOrderNumber;
 }
 public String getOrderOrderTime() {
  return orderOrderTime;
 }
 public void setOrderOrderTime(String orderOrderTime) {
  this.orderOrderTime = orderOrderTime;
 }
 public Map<String, Double> getGoodsMessage() {
  return goodsMessage;
 }
 public void setGoodsMessage(Map<String, Double> goodsMessage) {
  this.goodsMessage = goodsMessage;
 }
 

}


