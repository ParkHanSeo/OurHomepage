package com.naedam.user.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RestController
@RequestMapping("/user/notice/*")
public class NoticeController {

	@RequestMapping(value="noticeList")
	public ModelAndView noticeList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/notice/noticeList");
		return mv;
	}
	
	@RequestMapping(value="irList")
	public ModelAndView irDataList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/notice/irDataList");
		return mv;
	}
	
	@RequestMapping(value="etcDataList")
	public ModelAndView solutionList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/notice/etcDataList");
		return mv;
	}
}
