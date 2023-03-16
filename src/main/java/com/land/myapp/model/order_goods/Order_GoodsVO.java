package com.land.myapp.model.order_goods;

import java.util.Date;

public class Order_GoodsVO {
	
	// 주문(굿즈) 
	public class orderGoods {

	    // 회원번호 
	    private Long userNo;

	    // 상품번호 
	    private Long goodsNum;

	    // 구매날짜 
	    private Date orderDate;

	    // 배송지 
	    private String userAddr;

	    // 전화번호 
	    private Long userPhone;

	    // 배송상태 
	    private String orderProcess;

	    // 결제방법 
	    private String orderPayment;

	    public Long getUserNo() {
	        return userNo;
	    }

	    public void setUserNo(Long userNo) {
	        this.userNo = userNo;
	    }

	    public Long getGoodsNum() {
	        return goodsNum;
	    }

	    public void setGoodsNum(Long goodsNum) {
	        this.goodsNum = goodsNum;
	    }

	    public Date getOrderDate() {
	        return orderDate;
	    }

	    public void setOrderDate(Date orderDate) {
	        this.orderDate = orderDate;
	    }

	    public String getUserAddr() {
	        return userAddr;
	    }

	    public void setUserAddr(String userAddr) {
	        this.userAddr = userAddr;
	    }

	    public Long getUserPhone() {
	        return userPhone;
	    }

	    public void setUserPhone(Long userPhone) {
	        this.userPhone = userPhone;
	    }

	    public String getOrderProcess() {
	        return orderProcess;
	    }

	    public void setOrderProcess(String orderProcess) {
	        this.orderProcess = orderProcess;
	    }

	    public String getOrderPayment() {
	        return orderPayment;
	    }

	    public void setOrderPayment(String orderPayment) {
	        this.orderPayment = orderPayment;
	    }

	   
	}

}
