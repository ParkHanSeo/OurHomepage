package com.naedam.user.introduction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RestController
@RequestMapping("/user/introduction/*")
public class IntroductionController {

	@RequestMapping(value="solutionList")
	public ModelAndView solutionList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution");
		return mv;
	}
	
	@RequestMapping(value="consultingList")
	public ModelAndView consultingList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/consulting");
		return mv;
	}
	
	@RequestMapping(value="siList")
	public ModelAndView siList(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/si");
		return mv;
	}
	
}
