package com.mycompany.app.infra.book;

import org.springframework.web.multipart.MultipartFile;

public class Book {
	
//	 컬럼
	private String seq;
	private String bookSerialNum;
	private String bookTitle;
	private String anthorName;
	private String bookChapter;
	private String bookContent;
	private String bookReleaseDate;
	private String nation;
	private String publisher;
	private String price;
	private String bookTheme;
	private String delNy;
	
//	getter & setter
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getBookSerialNum() {
		return bookSerialNum;
	}
	public void setBookSerialNum(String bookSerialNum) {
		this.bookSerialNum = bookSerialNum;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	
	public String getBookReleaseDate() {
		return bookReleaseDate;
	}
	public void setBookReleaseDate(String bookReleaseDate) {
		this.bookReleaseDate = bookReleaseDate;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getBookTheme() {
		return bookTheme;
	}
	public void setBookTheme(String bookTheme) {
		this.bookTheme = bookTheme;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	public String getBookChapter() {
		return bookChapter;
	}
	public void setBookChapter(String bookChapter) {
		this.bookChapter = bookChapter;
	}
	public String getBookContent() {
		return bookContent;
	}
	public void setBookContent(String bookContent) {
		this.bookContent = bookContent;
	}
	public String getAnthorName() {
		return anthorName;
	}
	public void setAnthorName(String anthorName) {
		this.anthorName = anthorName;
	}
	
	
	
//	책 이미지
	private MultipartFile[] uploadImg;
	private MultipartFile[] uploadImgProfile;
	private MultipartFile[] uploadFile;
	private Integer uploadImgType;	
	private Integer uploadImgMaxNumber;
	private Integer uploadImgProfileType;
	private Integer uploadFileType;
	private Integer uploadImgProfileMaxNumber;
	private Integer uploadFileMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;

	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public MultipartFile[] getUploadImgProfile() {
		return uploadImgProfile;
	}
	public void setUploadImgProfile(MultipartFile[] uploadImgProfile) {
		this.uploadImgProfile = uploadImgProfile;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer getUploadImgType() {
		return uploadImgType;
	}
	public void setUploadImgType(Integer uploadImgType) {
		this.uploadImgType = uploadImgType;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public Integer getUploadImgProfileType() {
		return uploadImgProfileType;
	}
	public void setUploadImgProfileType(Integer uploadImgProfileType) {
		this.uploadImgProfileType = uploadImgProfileType;
	}
	public Integer getUploadFileType() {
		return uploadFileType;
	}
	public void setUploadFileType(Integer uploadFileType) {
		this.uploadFileType = uploadFileType;
	}
	public Integer getUploadImgProfileMaxNumber() {
		return uploadImgProfileMaxNumber;
	}
	public void setUploadImgProfileMaxNumber(Integer uploadImgProfileMaxNumber) {
		this.uploadImgProfileMaxNumber = uploadImgProfileMaxNumber;
	}
	public Integer getUploadFileMaxNumber() {
		return uploadFileMaxNumber;
	}
	public void setUploadFileMaxNumber(Integer uploadFileMaxNumber) {
		this.uploadFileMaxNumber = uploadFileMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	
	
}
