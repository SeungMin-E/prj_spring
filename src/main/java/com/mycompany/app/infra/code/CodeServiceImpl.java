package com.mycompany.app.infra.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;
	
	
	@Override
	public List<Code> codeSelectList(CodeVo vo) throws Exception{
		return dao.codeSelectList(vo);
	}

	@Override
	public Code codeSelectOne(CodeVo vo) throws Exception{
		return dao.codeSelectOne(vo);
	}

	@Override
	public int codeUpdate(Code dto) throws Exception{
		return dao.codeUpate(dto);
	}

	@Override
	public int codeDelete(Code dto) throws Exception{
		return dao.codeDelete(dto);
	}

	@Override
	public int codeInsert(Code dto) throws Exception{
		return dao.codeInsert(dto);
	}

	@Override
	public int codeUelete(Code dto) throws Exception {
		return dao.codeUelete(dto);
	}

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception{
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cahedCodeArrayList.clear();
		Code.cahedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cahedCodeArrayList : " + Code.cahedCodeArrayList.size() + "cahed");
	}
	
	public static void clear() throws Exception{
		Code.cahedCodeArrayList.clear();
	}
	
	public static List<Code> selectListCachedCode(String seq) throws Exception{
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cahedCodeArrayList) {
			if(codeRow.getCodeGroup_seq().equals(seq)) {
				rt.add(codeRow);
			}else {
				
			}
		}
		return rt;
	}
	
	public static String selectOneChchedCode(int code) throws Exception{
		String rt = "";
		for(Code codeRow : Code.cahedCodeArrayList) {
			if(codeRow.getSeq().equals(Integer.toString(code))) {
				rt = codeRow.getCode_value();
			}else {
				
			}
		}
		return rt;
	}
	
}
