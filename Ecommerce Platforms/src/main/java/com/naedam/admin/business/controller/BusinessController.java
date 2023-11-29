package com.naedam.admin.business.controller;

import java.util.HashMap;
import java.util.List;
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
import com.naedam.admin.business.model.vo.BusinessContents;
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
								  @RequestParam("mode") String mode,
								  @RequestParam(value="icon", required = false) MultipartFile icon,
								  HttpServletRequest request) throws Exception{
		
		BusinessRequest businessRequest = new BusinessRequest();
		businessRequest.setMode(mode);
		businessRequest.setBusiness(business);
		businessRequest.setBoardOption(boardOption);
		businessRequest.setIcon(icon);

		businessService.businessProcess(businessRequest);
		return "redirect:/admin/business/getBusinessList?locale="+business.getLocale();
	}
	
	@PostMapping("businessPostProcess")
	public String businessPostProcess(@ModelAttribute("business") Business business
									  ,@ModelAttribute("businessPost") BusinessPost businessPost  
									  ,@RequestParam(value="icon", required = false) MultipartFile icon
									  ,@RequestParam(value="img", required = false) MultipartFile img
									  ,@RequestParam("secNo") String secNo 
									  ,@RequestParam("mode") String mode
									  ,@RequestParam("businessNo") int businessNo
								      ,HttpServletRequest request) throws Exception{
		
		BusinessRequest businessRequest = new BusinessRequest();
		businessRequest.setBusiness(business);
		businessRequest.setBusinessPost(businessPost);
		businessRequest.setMode(mode);
		businessRequest.setIcon(icon);
		businessRequest.setFile(img);
		businessRequest.setRequest(request);
		businessRequest.setSecNo(secNo);
		
		businessService.businessPostProcess(businessRequest);
		return "redirect:/admin/business/getBusinessPostList?businessNo="+business.getBusinessNo()+"&locale="+businessPost.getLocale();
	}
	
	@PostMapping("businessContentsProcess")
	public String businessContentsProcess(@ModelAttribute("businessContents") BusinessContents businessContents
										 ,@ModelAttribute("businessPost") BusinessPost businessPost
										 ,@RequestParam(value="file", required = false) MultipartFile file
										 ,@RequestParam("secNo") String secNo 
										 ,@RequestParam("mode") String mode
									     ,HttpServletRequest request) throws Exception{

		BusinessRequest businessRequest = new BusinessRequest();
		businessRequest.setBusinessContents(businessContents);
		businessRequest.setBusinessPost(businessPost);
		businessRequest.setFile(file);
		businessRequest.setSecNo(secNo);
		businessRequest.setMode(mode);
		businessRequest.setRequest(request);
		
		businessService.businessContentsProcess(businessRequest);
		return "redirect:/admin/business/getBusinessContentsList?businessPostNo="+businessPost.getBusinessPostNo();
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
		map.put("locale", comm.getLocale());
		Map<String, Object> resultMap = businessService.getBusinessList(map);
		model.addAttribute("business", resultMap.get("list"));
		model.addAttribute("locale", comm.getLocale());
		return "admin/business/businessList";
	}
	

	@RequestMapping( value="getBusinessPostList")
	public String getBusinessPostList(@ModelAttribute("comm") Comm comm, Model model, HttpServletRequest request ,
									  @RequestParam("businessNo") int businessNo, 
									  @RequestParam(defaultValue = "1") int cPage,
									  @RequestParam(value = "locale", defaultValue = "ko") String locale) throws Exception{
		//게시글 리스트 수 limit 10으로
		int limit = 10;
		int offset = (cPage - 1) * limit;
		
		Business business = businessService.getBusiness(businessNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comm", comm);
		map.put("businessNo", businessNo);
		map.put("locale", locale);
		List<BusinessPost> businessPost = businessService.getBusinessPostList(map);
		int TotalBusinessPost = businessService.TotalBusinessPost(businessNo);
		
		model.addAttribute("business", business);
		model.addAttribute("list", businessPost);
		model.addAttribute("count", TotalBusinessPost);
		model.addAttribute("businessNo", businessNo);
		// pagebar
		String url = request.getRequestURI();
		
		model.addAttribute("locale", business.getLocale());
		
		return "admin/business/businessPostList";
	}
	
	@RequestMapping(value="getBusinessContentsList")
	public String getBusinessContentsList(@ModelAttribute("comm") Comm comm, Model model, HttpServletRequest request,
										  @RequestParam("businessPostNo") int businessPostNo,
										  @RequestParam(value = "locale", defaultValue = "ko") String locale) throws Exception{
		BusinessPost businessPost = businessService.getBusinessPost(businessPostNo);
		model.addAttribute("businessPost", businessPost);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comm", comm);
		map.put("businessPostNo", businessPostNo);
		map.put("locale", businessPost.getLocale());
		List<BusinessContents> businessContents = businessService.getBusinessContentsList(map);
		model.addAttribute("businessContents",businessContents);
		model.addAttribute("businessPostNo", businessPostNo);
		model.addAttribute("locale", businessPost.getLocale());
		return "admin/business/businessContentsList";
	}
	
	
	
	
	
	
	
	
}
