package com.mycompany.app.infra.noticeBoard;

public class NoticeBoard {
	
	private String notice_seq;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
	private String DPT_seq;
	
	
//	getter & setter
	public String getNotice_seq() {
		return notice_seq;
	}
	public void setNotice_seq(String notice_seq) {
		this.notice_seq = notice_seq;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getDPT_seq() {
		return DPT_seq;
	}
	public void setDPT_seq(String dPT_seq) {
		DPT_seq = dPT_seq;
	}
	
	
}
