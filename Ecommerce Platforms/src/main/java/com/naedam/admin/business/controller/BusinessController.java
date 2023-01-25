package com.naedam.admin.business.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.naedam.admin.board.model.vo.BoardOption;
import com.naedam.admin.business.model.service.BusinessService;
import com.naedam.admin.business.model.vo.Business;
import com.naedam.admin.business.model.vo.BusinessPost;
import com.naedam.admin.common.Comm;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/business/*")
@Slf4j
public class BusinessController {

	@Autowired
	private BusinessService businessService;
	
	/**
	 * 사업관리에 관련한 DML 프로세스
	 * @param business
	 * @param boardOption
	 * @param mode
	 * @return
	 * @throws Exception
	 */
	@PostMapping("businessProcess")
	public String businessProcess(@ModelAttribute("business") Business business, 
								  @ModelAttribute("boardOption") BoardOption boardOption,
								  @RequestParam("mode") String mode) throws Exception{
		Map<String, Object> businessMap = new HashMap<String, Object>();
		businessMap.put("mode", mode);
		businessMap.put("business", business);
		businessMap.put("boardOption", boardOption);
		businessService.businessProcess(businessMap);
		return "redirect:/admin/business/getBusinessList";
	}
	
	@PostMapping("businessPostProcess")
	public String businessPostProcess(@ModelAttribute("business") Business business
									  ,@ModelAttribute("businessPost") BusinessPost businessPost
									  ,@RequestParam(value="businessPostName", required = false) MultipartFile[] businessPostName  
									  ,@RequestParam(value="ThombnailName", required = false) MultipartFile ThombnailName 
									  ,@RequestParam("secNo") String secNo 
									  ,@RequestParam("mode") String mode
								      ,HttpServletRequest request) throws Exception{
		String filePath = request.getServletContext().getRealPath("resources/imgs/imageBoard/board");	
		Map<String, Object> businessPostMap	 = new HashMap<>();
		businessPostMap.put("business", business);
		businessPostMap.put("businessPost", businessPost);
		businessPostMap.put("mode", mode);
		businessPostMap.put("businessPostName", businessPostName);
		businessPostMap.put("ThombnailName", ThombnailName);
		businessPostMap.put("filePath", filePath);
		businessPostMap.put("secNo", secNo);
		businessService.businessPostProcess(businessPostMap);
		return "redirect:/admin/business/getBusinessPostList?businessNo="+business.getBusinessNo();
	}
	
	/**
	 * 사업관리 리스트
	 * @param search
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("getBusinessList")
	public String getBusinessList(@ModelAttribute("comm") Comm comm, Model model) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comm", comm);
		Map<String, Object> resultMap = businessService.getBusinessList(map);
		model.addAttribute("business", resultMap.get("list"));
		return "admin/business/businessList";
	}
	
	@RequestMapping( value="getBusinessPostList")
	public String getBusinessPostList(@ModelAttribute("comm") Comm comm, Model model, HttpServletRequest request ,
									  @RequestParam("businessNo") int businessNo, 
									  @RequestParam(defaultValue = "1") int cPage) throws Exception{
		//게시글 리스트 수 limit 10으로
		int limit = 10;
		int offset = (cPage - 1) * limit;
		
		Map<String, Object> businessMap = businessService.getBusiness(businessNo);
		model.addAttribute("business", businessMap);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comm", comm);
		map.put("businessNo", businessNo);
		Map<String, Object> resultMap = businessService.getBusinessPostList(map);
		model.addAttribute("list", resultMap.get("list"));
		System.out.println("log === "+resultMap.get("list"));
		// pagebar
		String url = request.getRequestURI();
		//String pagebar = Mir9Utils.getPagebar(cPage, limit, totalPostListCount, url);
		
		return "admin/business/businessPostList";
	}
	
	
	
	
	
	
	
	
}
