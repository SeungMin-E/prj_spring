package com.mycompany.app.infra.codegroup;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.app.infra.code.Code;
import com.mycompany.app.infra.code.CodeVo;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value="/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		vo.setGetGenkeyword(vo.getGetGenkeyword() == null ? "" : vo.getGetGenkeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "admin_host/infra/codegroup/codeGroupList";

//		System.out.println("nothing say anyone");
//		vo.setGetGenkeyword(vo.getGetGenkeyword() == null ? "회원" : vo.getGetGenkeyword());
//		List<CodeGroup> list = service.selectList(vo);
//		왼쪽의 list는 jsp 에서 사용할 변수명
//		model.addAttribute("list", list);
//		model.addAttribute("vo",vo);
		
//		System.out.println("nothing say anyone");
		
	}
	
	@RequestMapping(value="/codeGroupFrom")
	public String codeGroupForm(CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup codeGroup = service.selectOne(vo);
		
//		System.out.println("테스트 : " + vo.getGetGenkeyword());
//		System.out.println("테스트 : " + vo.getGenOption());
		
		model.addAttribute("item",codeGroup);
		
		return "admin_host/infra/codegroup/codeGroupFrom";
	}
	
	@RequestMapping(value="/codeGroupUpdate")
	public String codeGroupUpdate(CodeGroup dto) throws Exception {
		service.updateOne(dto);
		
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupDelete")
	public String codeGroupDelete(CodeGroup dto) throws Exception {
		service.deleteOne(dto);
		
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupCreate")
	public String codeGroupInsert(CodeGroup dto) throws Exception {
		service.insertOne(dto);
		
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupuele")
	public String codeGroupUele(CodeGroup dto, CodeGroupVo vo , Model model) throws Exception {
		service.uele(dto);
		
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item",codeGroup);
		
		return "admin_host/infra/codegroup/codeGroupFrom";
	}
	
	@RequestMapping(value="/codeGroupInsert")
	public String codeGroupInsertPage() throws Exception {
		return "admin_host/infra/codegroup/codeGroupInsert";
	}
	
	
//	카나리아니까 건들지 마세요.
	@RequestMapping(value="/test_page")
	public ModelAndView test_page() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_host/infra/index/ad_index_test");
		return mav;
	}
	
	@RequestMapping("/excelGri")
    public void excelDownload(CodeGroupVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        XSSFWorkbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("첫번째 시트");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"코드그룹 코드", "코드그룹 이름", "코드", "대체 코드", "코드 이름", "코드 이름 (영문)", "사용", "순서", "등록일", "수정일"};

	        row = sheet.createRow(rowNum++);
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCodeGroup_name());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(Integer.parseInt(list.get(i).getDelNy()));
	        	
//	            cell = row.createCell(3);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	cell.setCellValue(list.get(i).getCode_description());
//	            
//	            cell = row.createCell(4);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            cell.setCellValue(list.get(i).getCodeGroup_seq());
	            
				/*
				 * cell = row.createCell(5); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle);
				 * cell.setCellValue(list.get(i).getIfcdNameEng());
				 * 
				 * cell = row.createCell(6); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); if(list.get(i).getIfcdUseNy() != null)
				 * cell.setCellValue(list.get(i).getIfcdUseNy() == 0 ? "N" : "Y");
				 * 
				 * cell = row.createCell(7); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); if(list.get(i).getIfcdOrder() != null)
				 * cell.setCellValue(list.get(i).getIfcdOrder());
				 * 
				 * cell = row.createCell(8); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); if(list.get(i).getRegDateTime() != null)
				 * cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegDateTime())
				 * );
				 */
	        	
				/*
				 * cell = row.createCell(9); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); if(list.get(i).getModDateTime() != null)
				 * cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModDateTime())
				 * );
				 */
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=codeGroup.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	@ResponseBody
	@RequestMapping(value = "codeGroupXdmInit")
	public Map<String, Object> codeXdmInit() throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		service.selectListCachedCodeArrayList();
		returnMap.put("rt", "success");
		return returnMap;
	}	
}
