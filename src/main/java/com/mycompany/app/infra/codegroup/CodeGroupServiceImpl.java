package com.mycompany.app.infra.codegroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.app.infra.code.Code;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public int selectOneCount(CodeGroupVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) {
		return dao.selectList(vo);
	}
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int updateOne(CodeGroup dto) {
		return dao.updateOne(dto);
	}

	@Override
	public int deleteOne(CodeGroup dto) {
		return dao.deleteOne(dto);
	}

	@Override
	public int insertOne(CodeGroup dto) {
		return dao.insertOne(dto);
	}

	@Override
	public int uele(CodeGroup dto) {
		return dao.uele(dto);
	}

	@PostConstruct
	public void selectListCachedCodeGroupArrayList() throws Exception{
		List<CodeGroup> codeListFromDb = (ArrayList<CodeGroup>) dao.selectListCachedCodeGroupArrayList();
		codeListFromDb = (ArrayList<CodeGroup>) dao.selectListCachedCodeGroupArrayList();
		CodeGroup.cahedCodeGroupArrayList.clear();
		CodeGroup.cahedCodeGroupArrayList.addAll(codeListFromDb);
		System.out.println("cahedCodeArrayList : " + Code.cahedCodeArrayList.size() + "cahed");
	}
	
	public static void clear() throws Exception{
		CodeGroup.cahedCodeGroupArrayList.clear();
	}
	
	public static List<Code> selectListCachedCodeGroup(String seq) throws Exception{
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cahedCodeArrayList) {
			if(codeRow.getCodeGroup_seq().equals(seq)) {
				rt.add(codeRow);
			}else {
				
			}
		}
		return rt;
	}
	
	public static String selectOneChchedCodeGroup(int codeGroup) throws Exception{
		String rt = "";
		for(CodeGroup codeRow : CodeGroup.cahedCodeGroupArrayList) {
			if(codeRow.getSeq().equals(Integer.toString(codeGroup))) {
				rt = codeRow.getCodeGroup_name();
			}else {
				
			}
		}
		return rt;
	}
}
