package com.naedam.user.common.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.admin.member.model.service.MemberService;
import com.naedam.admin.menu.model.service.MenuService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RestController
@RequestMapping("/user/comm/*")
@Slf4j
public class UserCommController {
	@Autowired
	private MemberService memberService;
	@Autowired	
	private MenuService menuService;
	
	@GetMapping("json/menuHeaderList")
	public Map menuHeaderList(Locale locale, Model model,
			@RequestParam(value = "locale", defaultValue = "ko") String lang) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("locale", lang);
		Map<String, Object> resultMap = menuService.getMenuCategoryList(map);
		return resultMap;
	}	
}
