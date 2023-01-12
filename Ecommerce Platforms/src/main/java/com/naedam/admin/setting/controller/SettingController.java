package com.naedam.admin.setting.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.admin.award.model.vo.Award;
import com.naedam.admin.history.model.vo.History;

import com.naedam.admin.setting.model.service.SettingService;
import com.naedam.admin.setting.model.vo.AdminMenu;
import com.naedam.admin.setting.model.vo.AdminSetting;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/setting")
@Slf4j
public class SettingController {
	@Autowired
	private SettingService settingService;

	@Autowired
	ServletContext application;

	/**
	 * 설정 => 연혁 관리 조회
	 * @param model
	 */
	@GetMapping("/history")
	public void history(Model model) {
		List<History> historyList = settingService.selectHistoryList();
		model.addAttribute("historyList", historyList);
	}

	/**
	 * 설정 => 수상 관리 조회
	 * @param model
	 */
	@GetMapping("/award")
	public void award(Model model) {
		List<Award> awardList = settingService.selectAwardList();
		model.addAttribute("awardList", awardList);
	}
	/**
	 * 설정 => 기본 설정 => 기본, 언어, 관리자 메뉴 조회
	 * @param model
	 */
	@GetMapping("/info")
	public void info(Model model) {
		List<AdminMenu> adminMenuList = settingService.selectAdminMenuList();
		AdminSetting adminSetting = settingService.selectAdminSetting();
		model.addAttribute("adminSetting", adminSetting);
		model.addAttribute("adminMenuList", adminMenuList);
	}

}
