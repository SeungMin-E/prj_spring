package com.mycompany.app.infra.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> codeSelectList(CodeVo vo);
	
	public Code codeSelectOne(CodeVo vo);
	
	public int codeUpdate(Code dto);
	
	public int codeDelete(Code dto);
	
	public int codeInsert(Code dto);
	
	public int codeUelete(Code dto);
	
}
