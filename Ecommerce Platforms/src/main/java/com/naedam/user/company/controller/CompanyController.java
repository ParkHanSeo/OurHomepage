package com.naedam.user.company.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.naedam.admin.award.model.service.AwardService;
import com.naedam.admin.history.model.service.HistoryService;

@Controller
@RestController
@RequestMapping("/user/company/*")
public class CompanyController {
	
	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private AwardService awardService;
	/**
	 * 회사소개 => 사업개요 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="businessList")
	public ModelAndView businessList(Model model, @RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/"+locales+"/company/business");
		return mv;
	}
	
	/**
	 * 회사소개 => CEO 메세지 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="ceoList")
	public ModelAndView ceoList(Model model, @RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/"+locales+"/company/ceoMessage");
		return mv;
	}
	
	/**
	 * 회사소개 => 사업부 소개 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="divisionList")
	public ModelAndView divisionList(Model model, @RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/"+locales+"/company/division");
		return mv;
	}
	
	/**
	 * 회사소개 => 연혁 조회
	 * @param model
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="historyList")
	public ModelAndView historyList(Model model, HttpServletRequest request,
			@RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception {		
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map = new HashMap<>();
		map.put("locale", locales);
		Map<String, Object> resultMap = historyService.selectHistoryList(map);
		
		mv.addObject("history", resultMap.get("history"));
		mv.addObject("years", resultMap.get("years"));
		mv.addObject("months", resultMap.get("months"));
		
		Map<String, Object> awardMap = awardService.selectAwardList(map);
		awardMap.put("locale", locales);
		mv.addObject("award", awardMap.get("award"));
		mv.addObject("awardYears", awardMap.get("awardYears"));
		mv.addObject("awardMonths", awardMap.get("awardMonths"));
		
		mv.setViewName("user/"+locales+"/company/historyList");
		
		return mv;
	}
	
	/**
	 * 회사소개 => CI 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="ciList")
	public ModelAndView ciList(Model model, @RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/"+locales+"/company/ci");
		return mv;
	}
	
	/**
	 * 회사소개 => 오시는 길 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="directionsList")
	public ModelAndView directionsList(Model model, @RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/"+locales+"/company/directions");
		return mv;
	}
	
}
