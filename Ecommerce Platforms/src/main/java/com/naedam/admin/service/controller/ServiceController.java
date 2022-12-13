package com.naedam.admin.service.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.naedam.admin.board.model.vo.Search;
import com.naedam.admin.service.model.service.ServiceService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/service/*")
@Slf4j
public class ServiceController {

	@Autowired
	private ServiceService serviceService;
	
	/**
	 * 서비스 리스트
	 * @param search
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("getServiceList")
	public String getServiceList(@ModelAttribute("search") Search search, Model model) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		Map<String, Object> resultMap = serviceService.getServiceList(map);
		model.addAttribute("service", resultMap.get("list"));
		return "admin/service/serviceList";
	}
}
