package com.naedam.user.partner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.naedam.admin.setting.model.service.SettingService;

@Controller
@RestController
@RequestMapping("/user/partner/*")
public class PartnerController {

	@Autowired
	private SettingService settingService;
	
	/**
	 * 파트너 => 파트너쉽 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="partnerShipList")
	public ModelAndView partnerShipList(Model model, @RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/"+locales+"/partner/partnerShip");
		return mv;
	}
	
	/**
	 * 파트너 => 파트너 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="partnerList")
	public ModelAndView partnerList(Model model, @RequestParam(value = "locale", defaultValue = "ko") String locales) throws Exception{
		ModelAndView mv = new ModelAndView();
		//사용여부 확인 필요_sh loclae값 안넘겨도되나
		mv.addObject("list", settingService.selectPartner());
		mv.setViewName("user/"+locales+"/partner/partner");
		return mv;
	}
	
}
