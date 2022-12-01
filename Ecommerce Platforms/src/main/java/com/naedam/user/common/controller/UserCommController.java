package com.naedam.user.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.HomeController;
import com.naedam.admin.board.model.vo.Board;
import com.naedam.admin.member.model.service.MemberService;
import com.naedam.admin.menu.model.service.MenuService;
import com.naedam.admin.order.model.vo.OrderDetail;
import com.naedam.admin.product.model.vo.ProductDetail;

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
	public Map menuHeaderList(Locale locale, Model model) throws Exception {
		System.out.println("menuHeaderList 시작 ====");
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> resultMap = menuService.getMenuCategoryList(map);
		return resultMap;
	}	
}
