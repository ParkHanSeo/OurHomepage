package com.naedam;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.naedam.admin.board.model.service.BoardService;
import com.naedam.admin.board.model.vo.Board;
import com.naedam.admin.member.model.service.MemberService;
import com.naedam.admin.menu.model.service.MenuService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private BoardService boardService;
	@Autowired	
	private MenuService menuService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goIndex(Locale locale, Model model) {
		log.debug("HomeController ---- forward ----> index.jsp");
		// welcompage
		System.out.println("===================Index끝===============");
		return "/admin/index";
	}
	
	// dashBoard.jsp 메인
	// locale, model
	// 로그인 시 시작되는 메서드
	@RequestMapping(value = "/admin/dashBoard", method = RequestMethod.GET)
	public String goDashBoard(Locale locale, Model model) throws Exception {
		log.debug("HomeController ---- forward ----> dashBoard");
		return "admin/dashBoard";
	}
	
	@Cacheable
	@RequestMapping(value = "/user/dashBoard", method = RequestMethod.GET)
	public String goDashBoard2(Locale locale, Model model) throws Exception {
		log.debug("userHomeController ---- forward ----> dashBoard");
		Map<String, Object> map = new HashMap<String, Object>();
		model.addAttribute("head", menuService.getUserHeadList(map).get("list"));
//		model.addAttribute("post", boardService.getMainPostList());
		return "user/userDashBoard";
	}	

}
