package com.mycompany.app.infra.noticeBoard;

public class NoticeBoard {
	
	private String seq;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
	private String DPT_seq;
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
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
