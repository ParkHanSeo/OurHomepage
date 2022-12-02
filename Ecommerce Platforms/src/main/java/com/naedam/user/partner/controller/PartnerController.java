package com.naedam.user.partner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RestController
@RequestMapping("/user/partner/*")
public class PartnerController {

	/**
	 * 파트너 => 파트너쉽 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="partnerShipList")
	public ModelAndView partnerShipList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/partner/partnerShip");
		return mv;
	}
	
	/**
	 * 파트너 => 파트너 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="partnerList")
	public ModelAndView partnerList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/partner/partner");
		return mv;
	}
	
}
