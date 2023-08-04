package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/restinPeace")
public class CodeGroupRESTController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value="", method = RequestMethod.GET)
//	@GetMapping("")
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception{
		List<CodeGroup> list = service.selectList(vo);
		
		return list;
	}
	
	@RequestMapping(value="/{seq}", method = RequestMethod.GET)
//	@GetMapping("/{seq}")
	public CodeGroup selectOne(@PathVariable String seq,  CodeGroupVo vo)throws Exception{
		vo.setSeq(seq);
		CodeGroup item = service.selectOne(vo);
		
		return item;
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
//	@PostMapping("")
	public String insert(@RequestBody CodeGroup dto)throws Exception{
		service.insertOne(dto);
		
		return dto.getSeq();
	}
	
	@RequestMapping(value ="/{seq}", method = RequestMethod.PUT)
//	@PatchMapping("/{seq}")
//	@PutMapping("/{seq}")
	public void update(@PathVariable String seq, @RequestBody CodeGroup dto)throws Exception{
		dto.setSeq(seq);
		service.updateOne(dto);
	}
}
