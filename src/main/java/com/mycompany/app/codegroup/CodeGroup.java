package com.mycompany.app.codegroup;

public class CodeGroup {
	
//	DB 컬럼명 첫글자는 소문자로 시작할것.
//	seq는 편의상 디비에는  int 지만  자바에서는 String 으로 사용한다.
//	주로 테이블의 컬럼명과 일치
	
	private String seq;
	private Integer gender;
//	----- getter & setter
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	
}
