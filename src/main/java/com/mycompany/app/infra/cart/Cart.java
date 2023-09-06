package com.mycompany.app.infra.cart;

public class Cart {
	private String seq; // 기본적인 시퀀스
	private String quantity; // 수량임
	private String price;
	private String buyDate;
	private String userSeq; // 이건....
	private String BookInfo_seq;
	
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
		return BookInfo_seq;
	}
	public void setBookInfo_seq(String bookInfo_seq) {
		BookInfo_seq = bookInfo_seq;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
