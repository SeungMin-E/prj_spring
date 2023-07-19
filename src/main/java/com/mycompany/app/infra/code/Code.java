package com.mycompany.app.infra.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	private String seq;
	private String code_value;
	private String code_description;
	private String delNy;
	private String codeGroup_seq;
	
//	for cache
	public static List<Code> cahedCodeArrayList = new ArrayList<Code>();
	
//	getter & setter
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCode_value() {
		return code_value;
	}
	public void setCode_value(String code_value) {
		this.code_value = code_value;
	}
	public String getCode_description() {
		return code_description;
	}
	public void setCode_description(String code_description) {
		this.code_description = code_description;
	}
	
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	
	
	
}
