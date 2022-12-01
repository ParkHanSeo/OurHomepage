package com.naedam.user.company.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.naedam.admin.history.model.service.HistoryService;

@Controller
@RestController
@RequestMapping("/user/company/*")
public class CompanyController {
	
	@Autowired
	private HistoryService historyService;
	
	@RequestMapping(value="businessList")
	public ModelAndView businessList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/company/business");
		return mv;
	}
	
	@RequestMapping(value="ceoList")
	public ModelAndView ceoList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/company/ceoMessage");
		return mv;
	}
		
	@RequestMapping(value="divisionList")
	public ModelAndView divisionList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/company/division");
		return mv;
	}
	
	//연혁 목록
	@RequestMapping(value="historyList")
	public ModelAndView historyList(Model model, HttpServletRequest request) throws Exception {
		System.out.println("historyList 시작");
		ModelAndView mv = new ModelAndView();
		Map<String, Object> resultMap = historyService.selectHistoryList();
		System.out.println(resultMap.get("history"));
		mv.setViewName("user/company/historyList");
		mv.addObject("history", resultMap.get("history"));
		return mv;
	}
	
	@RequestMapping(value="ciList")
	public ModelAndView ciList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/company/ci");
		return mv;
	}
	
	@RequestMapping(value="directionsList")
	public ModelAndView directionsList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/company/directions");
		return mv;
	}
	
}
