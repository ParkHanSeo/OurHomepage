package com.naedam.user.setting.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.naedam.admin.award.model.service.AwardService;
import com.naedam.admin.history.model.service.HistoryService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user/setting/*")
@Slf4j
public class UserSettingController {
	
	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private AwardService awardService;
	
	int pageUnit = 5;
	int pageSize = 5;

	
	//연혁 목록
	@RequestMapping(value="historyList")
	public String historyList(Model model, HttpServletRequest request,
			@RequestParam(value = "locale", defaultValue = "false")String locale) throws Exception {
		
		Map<String, Object> map = new HashMap<>();
		
		Map<String, Object> resultMap = historyService.selectHistoryList(map);
		model.addAttribute("history", resultMap.get("history"));
		
		Map<String, Object> awardMap = awardService.selectAwardList(map);
		model.addAttribute("award", awardMap.get("award"));

		return "user/"+locale+"/company/historyList";
	}
	
}

