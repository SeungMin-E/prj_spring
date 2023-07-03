package com.mycompany.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;
	
	
	@Override
	public List<Code> codeSelectList(CodeVo vo) {
		return dao.codeSelectList(vo);
	}

	@Override
	public Code codeSelectOne(CodeVo vo) {
		return dao.codeSelectOne(vo);
	}

	@Override
	public int codeUpdate(Code dto) {
		return dao.codeUpate(dto);
	}

	@Override
	public int codeDelete(Code dto) {
		return dao.codeDelete(dto);
	}

	@Override
	public int codeInsert(Code dto) {
		return dao.codeInsert(dto);
	}

	@Override
	public int codeUelete(Code dto) {
		return codeUelete(dto);
	}

	
}
