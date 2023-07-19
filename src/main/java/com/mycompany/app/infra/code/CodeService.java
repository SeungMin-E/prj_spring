package com.mycompany.app.infra.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> codeSelectList(CodeVo vo) throws Exception;
	
	public Code codeSelectOne(CodeVo vo) throws Exception;
	
	public int codeUpdate(Code dto) throws Exception;
	
	public int codeDelete(Code dto) throws Exception;
	
	public int codeInsert(Code dto) throws Exception;
	
	public int codeUelete(Code dto) throws Exception;
	
	public int selectOneCount(CodeVo vo) throws Exception;
	
}
