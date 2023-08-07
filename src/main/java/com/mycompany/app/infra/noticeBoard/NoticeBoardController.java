package com.mycompany.app.infra.noticeBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeBoardController {
	
	@Autowired
	NoticeBoardServiceImpl service;
	
//	공지사항 페이지
	@RequestMapping(value="/projectNSA/notice")
	public String nsa_notice(@ModelAttribute("vo") NoticeBoardVo vo , Model model) throws Exception {
		
		vo.setNoticeTitleSer(vo.getNoticeTitleSer() == null ? "" : vo.getNoticeTitleSer());
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<NoticeBoard> list = service.selectList(vo);
			model.addAttribute("list", list);
		}else {
		}
		return "usr/infra/index/sub/notice";
	}
	
	
}
