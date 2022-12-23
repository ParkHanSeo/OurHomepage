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
	
	@RequestMapping(value="businessIntroduction")
	public ModelAndView businessIntroduction() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/businessIntroduction");
		return mv;		
	}
	
	@RequestMapping(value="consulting")
	public ModelAndView consulting() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/consulting");
		return mv;		
	}
	
	@RequestMapping(value="si")
	public ModelAndView si() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/si");
		return mv;		
	}
	
	@RequestMapping(value="digitalTwin")
	public ModelAndView digitalTwin(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/digitalTwin");
		return mv;
	}
	
	@RequestMapping(value="visionAi")
	public ModelAndView visionAi(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/visionAi");
		return mv;
	}
	
	@RequestMapping(value="cloudMsp")
	public ModelAndView cloudMsp(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/cloudMsp");
		return mv;
	}

	@RequestMapping(value="scm")
	public ModelAndView scm(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/scm");
		return mv;
	}
	
	@RequestMapping(value="innoPlm")
	public ModelAndView innoPlm(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/innoPlm");
		return mv;
	}
	
	@RequestMapping(value="innoAms")
	public ModelAndView innoAms(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/innoAms");
		return mv;
	}
	
	@RequestMapping(value="mes")
	public ModelAndView mes(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/mes");
		return mv;
	}
	
	@RequestMapping(value="solutionDevelopment")
	public ModelAndView solutionDevelopment(Model model) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/introduction/solution/solutionDevelopment");
		return mv;
	}
	
}
