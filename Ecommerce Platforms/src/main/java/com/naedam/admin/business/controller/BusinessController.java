package com.naedam.admin.business.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.naedam.admin.board.model.vo.BoardOption;
import com.naedam.admin.board.model.vo.Search;
import com.naedam.admin.business.model.service.BusinessService;
import com.naedam.admin.business.model.vo.Business;

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
	
	/**
	 * 서비스 리스트
	 * @param search
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("getBusinessList")
	public String getBusinessList(@ModelAttribute("search") Search search, Model model) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		Map<String, Object> resultMap = businessService.getBusinessList(map);
		model.addAttribute("business", resultMap.get("list"));
		System.out.println("데이터 체크 === "+resultMap.get("list"));
		return "admin/business/businessList";
	}
}
