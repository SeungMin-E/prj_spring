package com.mycompany.app.infra.code;

public class CodeVo {
//	검색 키워드
	private String seq;
	private String ageKeyword;
	private String birthOp;
	
//	페이지
	private int thisPage = 1;
	
//	private int rowNoToShow = Constants.ROW_NUM_TO_SHOW;
//	private int PageNoToShow = Constants.PAGE_NUM_TO_SHOW;

	private int rowNumToShow = 3;
	private int pageNumToShow = 2;
	
	private int totalRows;
	private int totalPages;
	private int startPage;
	private int endPage;
	
	private int startRunmForOracle = 1;
	private int endRunmForOracle;
	private Integer RNUM;
	
	private int startRunMForMysql = 0;
	
	//	get & set
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getAgeKeyword() {
		return ageKeyword;
	}
	public void setAgeKeyword(String ageKeyword) {
		this.ageKeyword = ageKeyword;
	}
	public String getBirthOp() {
		return birthOp;
	}
	public void setBirthOp(String birthOp) {
		this.birthOp = birthOp;
	}
	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	
	public int getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public int getPageNumToShow() {
		return pageNumToShow;
	}
	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRunmForOracle() {
		return startRunmForOracle;
	}
	public void setStartRunmForOracle(int startRunmForOracle) {
		this.startRunmForOracle = startRunmForOracle;
	}
	public int getEndRunmForOracle() {
		return endRunmForOracle;
	}
	public void setEndRunmForOracle(int endRunmForOracle) {
		this.endRunmForOracle = endRunmForOracle;
	}
	public Integer getRNUM() {
		return RNUM;
	}
	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}
	public int getStartRunMForMysql() {
		return startRunMForMysql;
	}
	public void setStartRunMForMysql(int startRunMForMysql) {
		this.startRunMForMysql = startRunMForMysql;
	}
	
	public void setParamPaing(int totalRows) {
//		setThisPage(3);
		
		setTotalRows(totalRows);
		
		if(getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}
		
		if(getTotalRows() % getRowNumToShow() > 0 ) {
			setTotalPages(getTotalPages() + 1);
		}
		
		if (getTotalPages() < getThisPage() ) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);
		
		setEndPage(getStartPage() + getPageNumToShow() - 1);
		
		if(getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRunmForOracle((getRowNumToShow() * getThisPage()));
		setStartRunmForOracle((getEndRunmForOracle() - getRowNumToShow()) + 1);
		
		if(getStartRunmForOracle() < 1) setStartRunmForOracle(1);
		
		if(thisPage == 1) {
			setStartRunMForMysql(0);
		} else {
			setStartRunMForMysql((getRowNumToShow() * (getThisPage() - 1)));
		}
		
		System.out.println("getThisPage() : " + getThisPage());
		System.out.println("getTotalRows() : " + getTotalRows());
		System.out.println("getRowsNumToShow() : " + getRowNumToShow());
		System.out.println("getTotalPages() : " + getTotalPages());
		System.out.println("getStartPage() : " + getStartPage());
		System.out.println("getEndPage() : " + getEndPage());
		System.out.println("getStartRunmForOracle() : " + getStartRunmForOracle());
		System.out.println("getEndRunmForOracle() : " + getEndRunmForOracle());
		System.out.println("getStartRunMForMysql() : " + getStartRunMForMysql());
	}
}
