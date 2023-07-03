package com.mycompany.app.infra.code;

public class CodeVo {
	private String seq;
	private Integer ageKeyword;
	private String birthOp;
	
//	get & set
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}

	public Integer getAgeKeyword() {
		return ageKeyword;
	}
	public void setAgeKeyword(Integer ageKeyword) {
		this.ageKeyword = ageKeyword;
	}
	public String getBirthOp() {
		return birthOp;
	}
	public void setBirthOp(String birthOp) {
		this.birthOp = birthOp;
	}
}
