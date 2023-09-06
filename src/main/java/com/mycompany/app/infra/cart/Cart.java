package com.mycompany.app.infra.cart;

public class Cart {
	private String seq; // 기본적인 시퀀스
	private String quantity; // 수량임
	private String totalPrice;
	private String buyDate;
	private String userSeq; // 이건....
	private String Book_seq;
	
//	get & set
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}
	public String getBookInfo_seq() {
		return Book_seq;
	}
	public void setBookInfo_seq(String bookInfo_seq) {
		Book_seq = bookInfo_seq;
	}
	
}
